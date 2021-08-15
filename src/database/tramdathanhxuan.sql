-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 15, 2021 lúc 05:41 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tramdathanhxuan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `seo_title`, `description`, `seo_description`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(2, 'Nhẫn Đá Quý', 'nhan-da-quy', 'Đá quý món quà kỳ diệu của thiên nhiên ban tặng', 'Đá quý được kết tinh trong lòng đất trải qua hàng triệu năm hấp thu linh khí đất trời. Chính vì vậy, đá quý không chỉ là món đồ trang sức giá trị mà còn có nhiều ý nghĩa trong đời sống. Có thể nói đá quý là món quà kỳ diệu mà thiên nhiên ban tặng cho con người.', NULL, '2021-08-14 06:16:06', '2021-08-14 06:16:06', NULL, 'thanhxuan/assets/images/tabs-image-01.jpg'),
(3, 'Vòng Tay', 'vong-tay', 'Vòng Tay Làm Bằng Đá Hoặc Trầm', 'Vòng tay phong thủy là một trong những vật phẩm có công dụng mạnh nhất trong việc thay tài đổi vận, mang lại sức khỏe, công danh, tình duyên, tài lộc.', NULL, '2021-08-14 06:18:16', '2021-08-14 06:18:16', NULL, 'thanhxuan/assets/images/tabs-image-02.jpg'),
(4, 'Tượng Phật', 'tuong-phat', 'Tượng Phật Phong Thủy', 'Trầm hương, đá quý được biết đến trong phong thủy như một vật phẩm giúp trừ tà ma. Thường được sử dụng với mong muốn mang lại những điều may mắn. Trầm hương là một loại gỗ quí với hương thơm thanh khiết mà hầu hết các tôn giáo đều sử dụng dể dâng cúng lên các bậc tôn kính của mình. Tượng Phật bằng trầm hương được chế tác từ trầm hương của rừng già.', NULL, '2021-08-14 06:18:39', '2021-08-14 06:18:39', '0000-00-00 00:00:00', 'thanhxuan/assets/images/tabs-image-03.jpg'),
(5, 'Tranh Phong Thủy', 'tranh-phong-thuy', 'Tranh phong thủy là gì?', 'Tranh phong thủy được hiểu là loại tranh thu hút sự quan tâm của nhiều ngưởi bởi bức tranh mang lại một vẻ đẹp ấn tượng cho ngôi nhà của bạn, giúp thu hút được sự chú ý của khách đến chơi; không những thế, khi xét về ý nghĩa phong thủy, thì tranh sẽ giúp cho gia chủ cũng như gia đình gặp nhiều điều may mắn, giúp hóa giải điềm xấu, giúp con đường công danh sự nghiệp của gia chủ được thăng tiến.', NULL, '2021-08-14 06:19:07', '2021-08-14 06:19:07', NULL, 'thanhxuan/assets/images/tabs-image-04.jpg'),
(6, 'Vòng Cổ', 'vong-co', 'Vòng cổ làm bằng đá tự nhiên - trang sức xứng đáng cho cổ của bạn', 'Trong thế kỷ hai mươi mốt, các nhà thiết kế trang sức đưa ra một loại rất lớn: từ trang sức rẻ tiền đến các tác phẩm nghệ thuật của tác giả tinh xảo với những viên đá quý đắt nhất. Người mua có thể khó điều hướng trong tất cả sự đa dạng này. Nếu bạn chọn vòng cổ làm bằng đá tự nhiên, bạn chắc chắn sẽ không hối tiếc. Nó sẽ là một trang trí xứng đáng của cổ của bạn.', NULL, '2021-08-14 06:20:42', '2021-08-14 06:20:42', NULL, 'thanhxuan/assets/images/tabs-image-05.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Đang đổ dữ liệu cho bảng `data_rows`
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
(22, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 7, 'cost', 'number', 'Cost', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 7, 'stock', 'number', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 7, 'views', 'number', 'Views', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 9),
(31, 7, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(32, 7, 'seo_description', 'text_area', 'Seo Description', 0, 1, 1, 1, 1, 1, '{}', 11),
(33, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 18),
(34, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 20),
(35, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(36, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(38, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(39, 8, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(40, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(41, 8, 'seo_description', 'text', 'Seo Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(42, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(43, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(44, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(45, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(47, 9, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(48, 9, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(49, 9, 'seo_content', 'text_area', 'Seo Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(50, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 6),
(51, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(52, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(53, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(54, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(55, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 11, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 11, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(59, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(60, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(61, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 12, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(64, 12, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 12, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 12, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(68, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(69, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(70, 7, 'product_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(71, 7, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 15),
(72, 7, 'vendor_id', 'text', 'Vendor Id', 1, 1, 1, 1, 1, 1, '{}', 16),
(73, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 17),
(74, 7, 'product_belongsto_vendor_relationship', 'relationship', 'vendors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Vendor\",\"table\":\"vendors\",\"type\":\"belongsTo\",\"column\":\"vendor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(75, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(76, 7, 'product_hasmany_product_image_relationship', 'relationship', 'product_images', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductImage\",\"table\":\"product_images\",\"type\":\"hasMany\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"image\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(77, 8, 'category_hasmany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(78, 11, 'product_image_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-02-17 20:59:04', '2021-02-17 20:59:04'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-02-17 20:59:04', '2021-02-17 20:59:04'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-02-17 20:59:04', '2021-02-17 20:59:04'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-18 00:21:44', '2021-02-18 02:41:44'),
(8, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-18 00:25:47', '2021-02-18 02:35:21'),
(9, 'news', 'news', 'News', 'News', NULL, 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-18 01:29:18', '2021-02-18 02:41:16'),
(11, 'product_images', 'product-images', 'Product Image', 'Product Images', NULL, 'App\\Models\\ProductImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-18 01:40:04', '2021-02-18 02:26:09'),
(12, 'vendors', 'vendors', 'Vendor', 'Vendors', NULL, 'App\\Models\\Vendor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-18 01:41:08', '2021-02-18 02:34:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-02-17 20:59:05', '2021-02-17 20:59:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-02-17 20:59:05', '2021-02-17 20:59:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-02-17 20:59:05', '2021-02-17 20:59:05', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-02-17 20:59:08', '2021-02-17 20:59:08', 'voyager.hooks', NULL),
(12, 1, 'Products', '', '_self', NULL, NULL, NULL, 15, '2021-02-18 00:21:45', '2021-02-18 00:21:45', 'voyager.products.index', NULL),
(13, 1, 'Categories', '', '_self', NULL, NULL, NULL, 16, '2021-02-18 00:25:47', '2021-02-18 00:25:47', 'voyager.categories.index', NULL),
(14, 1, 'News', '', '_self', NULL, NULL, NULL, 17, '2021-02-18 01:29:18', '2021-02-18 01:29:18', 'voyager.news.index', NULL),
(15, 1, 'Product Images', '', '_self', NULL, NULL, NULL, 18, '2021-02-18 01:40:04', '2021-02-18 01:40:04', 'voyager.product-images.index', NULL),
(16, 1, 'Vendors', '', '_self', NULL, NULL, NULL, 19, '2021-02-18 01:41:09', '2021-02-18 01:41:09', 'voyager.vendors.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(2, 'browse_bread', NULL, '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(3, 'browse_database', NULL, '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(4, 'browse_media', NULL, '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(5, 'browse_compass', NULL, '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(6, 'browse_menus', 'menus', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(7, 'read_menus', 'menus', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(8, 'edit_menus', 'menus', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(9, 'add_menus', 'menus', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(10, 'delete_menus', 'menus', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(11, 'browse_roles', 'roles', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(12, 'read_roles', 'roles', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(13, 'edit_roles', 'roles', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(14, 'add_roles', 'roles', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(15, 'delete_roles', 'roles', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(16, 'browse_users', 'users', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(17, 'read_users', 'users', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(18, 'edit_users', 'users', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(19, 'add_users', 'users', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(20, 'delete_users', 'users', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(21, 'browse_settings', 'settings', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(22, 'read_settings', 'settings', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(23, 'edit_settings', 'settings', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(24, 'add_settings', 'settings', '2021-02-17 20:59:07', '2021-02-17 20:59:07'),
(25, 'delete_settings', 'settings', '2021-02-17 20:59:07', '2021-02-17 20:59:07'),
(26, 'browse_hooks', NULL, '2021-02-17 20:59:08', '2021-02-17 20:59:08'),
(27, 'browse_products', 'products', '2021-02-18 00:21:45', '2021-02-18 00:21:45'),
(28, 'read_products', 'products', '2021-02-18 00:21:45', '2021-02-18 00:21:45'),
(29, 'edit_products', 'products', '2021-02-18 00:21:45', '2021-02-18 00:21:45'),
(30, 'add_products', 'products', '2021-02-18 00:21:45', '2021-02-18 00:21:45'),
(31, 'delete_products', 'products', '2021-02-18 00:21:45', '2021-02-18 00:21:45'),
(32, 'browse_categories', 'categories', '2021-02-18 00:25:47', '2021-02-18 00:25:47'),
(33, 'read_categories', 'categories', '2021-02-18 00:25:47', '2021-02-18 00:25:47'),
(34, 'edit_categories', 'categories', '2021-02-18 00:25:47', '2021-02-18 00:25:47'),
(35, 'add_categories', 'categories', '2021-02-18 00:25:47', '2021-02-18 00:25:47'),
(36, 'delete_categories', 'categories', '2021-02-18 00:25:47', '2021-02-18 00:25:47'),
(37, 'browse_news', 'news', '2021-02-18 01:29:18', '2021-02-18 01:29:18'),
(38, 'read_news', 'news', '2021-02-18 01:29:18', '2021-02-18 01:29:18'),
(39, 'edit_news', 'news', '2021-02-18 01:29:18', '2021-02-18 01:29:18'),
(40, 'add_news', 'news', '2021-02-18 01:29:18', '2021-02-18 01:29:18'),
(41, 'delete_news', 'news', '2021-02-18 01:29:18', '2021-02-18 01:29:18'),
(42, 'browse_product_images', 'product_images', '2021-02-18 01:40:04', '2021-02-18 01:40:04'),
(43, 'read_product_images', 'product_images', '2021-02-18 01:40:04', '2021-02-18 01:40:04'),
(44, 'edit_product_images', 'product_images', '2021-02-18 01:40:04', '2021-02-18 01:40:04'),
(45, 'add_product_images', 'product_images', '2021-02-18 01:40:04', '2021-02-18 01:40:04'),
(46, 'delete_product_images', 'product_images', '2021-02-18 01:40:04', '2021-02-18 01:40:04'),
(47, 'browse_vendors', 'vendors', '2021-02-18 01:41:08', '2021-02-18 01:41:08'),
(48, 'read_vendors', 'vendors', '2021-02-18 01:41:08', '2021-02-18 01:41:08'),
(49, 'edit_vendors', 'vendors', '2021-02-18 01:41:08', '2021-02-18 01:41:08'),
(50, 'add_vendors', 'vendors', '2021-02-18 01:41:08', '2021-02-18 01:41:08'),
(51, 'delete_vendors', 'vendors', '2021-02-18 01:41:08', '2021-02-18 01:41:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT 0,
  `isHot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `cost`, `price`, `stock`, `views`, `slug`, `seo_title`, `seo_description`, `deleted_at`, `created_at`, `updated_at`, `category_id`, `vendor_id`, `user_id`, `gender`, `isHot`) VALUES
(1, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', 'May Mắn, Hạnh Phúc dành cho mệnh Kim,  mệnh Thủy. Thạch anh ưu linh là anh cả trong họ thạch anh với đặc điểm tinh thể đá thạch anh bị xâm nhập bởi một số khoáng chất khác tạo nên những viên đá với nhiều sắc thái và hình thù bên trong.', NULL, '2021-08-14 06:39:00', '2021-08-14 07:16:04', 3, 1, NULL, 0, 1),
(2, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', 'May Mắn, Hạnh Phúc dành cho mệnh Kim,  mệnh Thủy. Thạch anh ưu linh là anh cả trong họ thạch anh với đặc điểm tinh thể đá thạch anh bị xâm nhập bởi một số khoáng chất khác tạo nên những viên đá với nhiều sắc thái và hình thù bên trong.', NULL, '2021-08-14 07:26:50', '2021-08-14 07:26:50', 2, 1, NULL, 1, 1),
(3, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', 'May Mắn, Hạnh Phúc dành cho mệnh Kim,  mệnh Thủy. Thạch anh ưu linh là anh cả trong họ thạch anh với đặc điểm tinh thể đá thạch anh bị xâm nhập bởi một số khoáng chất khác tạo nên những viên đá với nhiều sắc thái và hình thù bên trong.', NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 1),
(4, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', 'May Mắn, Hạnh Phúc dành cho mệnh Kim,  mệnh Thủy. Thạch anh ưu linh là anh cả trong họ thạch anh với đặc điểm tinh thể đá thạch anh bị xâm nhập bởi một số khoáng chất khác tạo nên những viên đá với nhiều sắc thái và hình thù bên trong.', NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 1),
(5, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', 'mang lại cho chủ nhân vẻ đẹp sang trọng với màu xanh lam đậm, độ sáng óng ánh. Ngoài ra, công dụng trong phong thủy của nó cũng cực kỳ nổi bật. Kyanite là viên đá tạo ra sự cân bằng cho toàn bộ các phần của cơ thể, mang đến sự yên tĩnh và thanh thản cho tâm hồn,giúp con người tập trung và tái tạo nguồn năng lượng mới.', NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 1),
(6, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', 'mang lại cho chủ nhân vẻ đẹp sang trọng với màu xanh lam đậm, độ sáng óng ánh. Ngoài ra, công dụng trong phong thủy của nó cũng cực kỳ nổi bật. Kyanite là viên đá tạo ra sự cân bằng cho toàn bộ các phần của cơ thể, mang đến sự yên tĩnh và thanh thản cho tâm hồn,giúp con người tập trung và tái tạo nguồn năng lượng mới.', NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 1),
(7, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', 'mang lại cho chủ nhân vẻ đẹp sang trọng với màu xanh lam đậm, độ sáng óng ánh. Ngoài ra, công dụng trong phong thủy của nó cũng cực kỳ nổi bật. Kyanite là viên đá tạo ra sự cân bằng cho toàn bộ các phần của cơ thể, mang đến sự yên tĩnh và thanh thản cho tâm hồn,giúp con người tập trung và tái tạo nguồn năng lượng mới.', NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 1),
(8, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', 'mang lại cho chủ nhân vẻ đẹp sang trọng với màu xanh lam đậm, độ sáng óng ánh. Ngoài ra, công dụng trong phong thủy của nó cũng cực kỳ nổi bật. Kyanite là viên đá tạo ra sự cân bằng cho toàn bộ các phần của cơ thể, mang đến sự yên tĩnh và thanh thản cho tâm hồn,giúp con người tập trung và tái tạo nguồn năng lượng mới.', NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 4, 1, NULL, 1, 1),
(9, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 4, 1, NULL, 0, 1),
(10, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 4, 1, NULL, 1, 1),
(11, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 5, 1, NULL, 0, 0),
(12, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 5, 1, NULL, 1, 0),
(13, 'VÒNG TAY ĐÁ', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 5, 1, NULL, 0, 0),
(14, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 5, 1, NULL, 1, 0),
(15, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 6, 1, NULL, 0, 0),
(16, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 6, 1, NULL, 1, 0),
(17, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 6, 1, NULL, 0, 0),
(18, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 6, 1, NULL, 1, 0),
(19, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 6, 1, NULL, 0, 0),
(20, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 6, 1, NULL, 1, 0),
(21, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 6, 1, NULL, 0, 0);
INSERT INTO `products` (`id`, `name`, `description`, `image`, `cost`, `price`, `stock`, `views`, `slug`, `seo_title`, `seo_description`, `deleted_at`, `created_at`, `updated_at`, `category_id`, `vendor_id`, `user_id`, `gender`, `isHot`) VALUES
(22, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(23, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(24, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 3, 1, NULL, 1, 0),
(25, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(26, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(27, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(28, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(29, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(30, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(31, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(32, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(33, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(34, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(35, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(36, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(37, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(38, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(39, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(40, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(41, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(42, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(43, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(44, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0);
INSERT INTO `products` (`id`, `name`, `description`, `image`, `cost`, `price`, `stock`, `views`, `slug`, `seo_title`, `seo_description`, `deleted_at`, `created_at`, `updated_at`, `category_id`, `vendor_id`, `user_id`, `gender`, `isHot`) VALUES
(45, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(46, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(47, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(48, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(49, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(50, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(51, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(52, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(53, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(54, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(55, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(56, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(57, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(58, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(59, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(60, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(61, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(62, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0),
(63, 'VÒNG TAY ĐÁ CẨM THẠCH XANH', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">&Yacute; nghĩa v&ograve;ng tay ngọc b&iacute;ch:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Trong H&aacute;n tự, chữ Vương th&ecirc;m một dấu chấm th&igrave; th&agrave;nh chữ Ngọc, &yacute; n&oacute;i ai d&ugrave;ng ngọc ắt phải người vương giả, gi&agrave;u sang. V&igrave; vậy c&aacute;c loại ngọc qu&yacute;, ti&ecirc;u biểu l&agrave; Ngọc B&iacute;ch Nephrite l&agrave; những vi&ecirc;n đ&aacute; mang gi&aacute; trị phong thủy cao, hỗ trợ rất tốt cho đường c&ocirc;ng danh t&agrave;i lộc.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc Nephrite được khai th&aacute;c chủ yếu ở British Columbia &ndash; một bang ở cực t&acirc;y đất nước Canada, ở Myanma, hay ở những cao nguy&ecirc;n đ&aacute; Trung Quốc hay T&acirc;y Tạng. Những khối đ&aacute; Ngọc B&iacute;ch rất cứng, để khai th&aacute;c ch&uacute;ng người ta phải sử dụng những mũi khoan Kim Cương đen. Kh&oacute; khăn trong qu&aacute; tr&igrave;nh khai th&aacute;c v&agrave; chế t&aacute;c th&agrave;nh phẩm khiến cho số lượng Ngọc B&iacute;ch được sản xuất hằng năm rất khi&ecirc;m tốn.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Ngọc B&iacute;ch Nephrite l&agrave; biểu tượng của quyền uy, danh vọng, l&agrave; đại diện của tầng lớp qu&yacute; tộc. Người ta c&ograve;n cho rằng Ngọc B&iacute;ch l&agrave; biểu tượng của b&igrave;nh an, may mắn. Ngọc B&iacute;ch tăng cường sức khỏe, c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ. Người mang Ngọc b&ecirc;n m&igrave;nh thường xuy&ecirc;n th&igrave; chống nhược thị, hỗ trợ lu&acirc;n chuyển những d&ograve;ng kh&iacute; trong cơ thể.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4; text-align: justify;\"><span style=\"box-sizing: border-box;\">Để bảo quản v&ograve;ng tay Ngọc B&iacute;ch Nephrite, ta cần lưu &yacute;:</span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; background-color: #f4f4f4;\">\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Cũng giống như nhiều loại đ&aacute; qu&yacute; kh&aacute;c, khi sử dụng v&ograve;ng tay Ngọc B&iacute;ch Nephrite, bạn n&ecirc;n giữ g&igrave;n cẩn thận, tr&aacute;nh g&acirc;y va đập, trầy xước ảnh hưởng tới bề mặt vi&ecirc;n đ&aacute;.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Kh&ocirc;ng được để v&ograve;ng tay Ngọc B&iacute;ch Nephrite tiếp x&uacute;c với nhiệt hoặc axit.</li>\r\n<li style=\"box-sizing: border-box; text-align: justify;\">Khi v&ograve;ng tay Ngọc B&iacute;ch Nephrite bị bẩn, bạn c&oacute; thể rửa bằng nước lọc hoặc c&aacute;c loại nước rửa đ&aacute; ngọc chuy&ecirc;n dụng.&nbsp;</li>\r\n</ul>', 'products\\August2021\\4zBvofooHJsoPemBfw9x.png', 18000000, 18000000, 18000000, 10, 'vong-tay-da-cam-thach-xanh', 'VÒNG TAY ĐÁ CẨM THẠCH XANH', NULL, NULL, '2021-08-13 23:39:00', '2021-08-14 00:16:04', 3, 1, NULL, 0, 0),
(64, 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', '<p><span style=\"color: #222222; font-family: Roboto, sans-serif; font-size: 13.6px; text-align: justify; background-color: #f4f4f4;\">Nhẫn phong thủy kh&ocirc;ng chỉ l&agrave; loại trang sức th&ocirc;ng thường m&agrave; theo quan niệm của người phương Đ&ocirc;ng th&igrave; việc đeo nhẫn phong thủy c&ograve;n mang &yacute; nghĩa t&acirc;m linh s&acirc;u sắc. Ng&agrave;y nay rất nhiều loại đ&aacute; qu&yacute; được chế t&aacute;c th&agrave;nh nhẫn với nhiều &yacute; nghĩa, mang lại vận kh&iacute; tốt, c&ocirc;ng danh sự nghiệp thịnh vượng, gặp nhiều may mắn trong cuộc sống.&nbsp;</span></p>', 'products\\August2021\\DX8zgbhl7iANWBmyU7mf.png', 3000000, 3000000, 3000000, 10, 'nhan-vang-boc-da-saphia-hong', 'NHẪN VÀNG BỌC ĐÁ SAPHIA HỒNG', NULL, NULL, '2021-08-14 00:26:50', '2021-08-14 00:26:50', 2, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'product-images\\August2021\\RBnKSs2FkWWdwfURJrI0.png', 1, NULL, '2021-08-14 23:23:01', '2021-08-14 23:23:01'),
(2, 'product-images\\August2021\\I4gh51PoLyxogX5jfNed.png', 1, NULL, '2021-08-14 23:23:53', '2021-08-14 23:23:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-02-17 20:59:06', '2021-02-17 20:59:06'),
(2, 'user', 'Normal User', '2021-02-17 20:59:06', '2021-02-17 20:59:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'khanhlq', 'quockhanhk15tpm@gmail.com', 'users/default.png', NULL, '$2y$10$kHPtIzCFEp02QEyLUxR3N.J/Y7PeE4lS1bmDuvRSr637hQKv/iR8y', NULL, NULL, '2021-02-17 21:02:49', '2021-02-17 21:02:49'),
(2, 1, 'Hoang Phan', 'phanthienhoang95@gmail.com', 'users\\August2021\\ybXDjNX2liixGyF3r1vv.png', NULL, '$2y$10$ksrmHKzY8B581fx4bfhs8ucbepIy7Tv6YwpZLs0nbgSRzAVejFQE6', NULL, '{\"locale\":\"en\"}', '2021-02-18 01:47:35', '2021-08-14 07:16:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `address`, `phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'THANH XUÂN', 'da-quy-thanh-xuan', 'phanthienhoang95@gmail.com', '77 MINH MẠNG - HUẾ', '0708033319', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
