-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2026 a las 23:50:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_venta_fe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:29:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"api\";}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"register_role\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"list_role\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:9:\"edit_role\";s:1:\"c\";s:3:\"api\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"api\";}i:5;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:13:\"register_user\";s:1:\"c\";s:3:\"api\";}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"list_user\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:7;}}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:9:\"edit_user\";s:1:\"c\";s:3:\"api\";}i:8;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"api\";}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"register_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:10;a:3:{s:1:\"a\";i:11;s:1:\"b\";s:14:\"edit_categorie\";s:1:\"c\";s:3:\"api\";}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:16:\"delete_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:14:\"list_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:7;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"register_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"list_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:12:\"edit_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"delete_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"register_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:11:\"list_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:7;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:11:\"edit_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:20;a:3:{s:1:\"a\";i:21;s:1:\"b\";s:13:\"delete_client\";s:1:\"c\";s:3:\"api\";}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:13:\"register_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:9:\"list_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:25;a:3:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"register_guia_remision\";s:1:\"c\";s:3:\"api\";}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"list_guia_remision\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:7;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:16:\"nota_electronica\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"list_nota_electronica\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:7;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"Asesor Comercial\";s:1:\"c\";s:3:\"api\";}i:1;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"Supervisor\";s:1:\"c\";s:3:\"api\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:21:\"Administrador de Sede\";s:1:\"c\";s:3:\"api\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"Contador\";s:1:\"c\";s:3:\"api\";}}}', 1770331656);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`, `imagen`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Lubricantes', 'categories/WhsOSvFG5Vyrug2YHXEXWhkXuko2UsRlUVUX3M5v.png', 1, '2026-01-22 18:51:40', '2026-01-27 22:49:15', NULL),
(6, 'Camara Moto', 'categories/K1AqLdJ80bYNDix4hCPIVjWiKP6jds53SVJexBui.jpg', 1, '2026-02-03 03:44:57', '2026-02-03 03:44:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `type_client` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es cliente normal y 2 es empresa',
  `type_document` varchar(150) DEFAULT NULL,
  `n_document` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'M es masculino y F femenino',
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `ubigeo_distrito` varchar(25) DEFAULT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_region` varchar(25) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `provincia` varchar(80) DEFAULT NULL,
  `region` varchar(80) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`, `full_name`, `phone`, `email`, `type_client`, `type_document`, `n_document`, `gender`, `birth_date`, `user_id`, `address`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Lucero Sofia', 'Rojas Javier', 'Lucero Sofia Rojas Javier', '930518038', 'sofiajavierrojas6@gmail.com', 1, 'DNI', '75322356', 'M', '2004-12-26 00:00:00', 6, 'JR. PEDRO RODRIGUEZ PAIVA 124 - Calleria - Coronel', '100606', '1006', '10', 'Mariano Damaso Beraun', 'Leoncio Prado', 'Huánuco', 1, '2026-01-26 20:13:07', '2026-01-26 22:13:19', NULL),
(30, NULL, NULL, 'Distribuidora Surco EIRL 123', '94845454', 'distribuidorasurco@eirl.com', 2, 'RUC', '20161515649', 'M', '2007-03-26 00:00:00', 6, 'Av. Raymondi Nº1139', '200401', '2004', '20', 'Chulucanas', 'Morropón', 'Piura', 1, '2026-01-26 23:04:56', '2026-01-26 23:04:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(250) NOT NULL,
  `razon_social_comercial` varchar(250) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `n_document` varchar(50) NOT NULL,
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `address` varchar(250) DEFAULT NULL,
  `urbanizacion` varchar(250) NOT NULL,
  `cod_local` varchar(150) NOT NULL,
  `ubigeo_distrito` varchar(25) DEFAULT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_region` varchar(25) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `provincia` varchar(80) DEFAULT NULL,
  `region` varchar(80) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `razon_social`, `razon_social_comercial`, `phone`, `email`, `n_document`, `birth_date`, `address`, `urbanizacion`, `cod_local`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laravest Sac. TEC .', 'Laravest', '958962565', 'echodeveloper960@gmail.com', '20161515648', '2025-04-29 00:00:00', 'Av. Primavera 2711, Santiago de Surco 25884', 'Peru', '0000', '150101', '1501', '15', 'Lima', 'Lima', 'Lima', '2026-01-27 03:01:06', '2026-01-27 03:01:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_notes`
--

CREATE TABLE `electronic_notes` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `doc_nota` varchar(10) NOT NULL DEFAULT '07' COMMENT '07 credito,08 debito',
  `type_nota` varchar(5) NOT NULL,
  `n_comprobante` varchar(150) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `is_exportacion` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_global` double NOT NULL DEFAULT 0,
  `igv` double NOT NULL,
  `type_payment` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT 0 COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT 0 COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `state_entrega` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 completo',
  `amount_anticipo` double NOT NULL DEFAULT 0,
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sales_anticipos`)),
  `description` text DEFAULT NULL,
  `description_motivo` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_note_details`
--

CREATE TABLE `electronic_note_details` (
  `id` bigint(20) NOT NULL,
  `electronic_note_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `tip_afe_igv` int(3) UNSIGNED NOT NULL DEFAULT 10,
  `per_icbper` double NOT NULL DEFAULT 0,
  `icbper` double NOT NULL DEFAULT 0,
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT 0,
  `isc` double UNSIGNED NOT NULL DEFAULT 0,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `price_base` double NOT NULL DEFAULT 0,
  `price_final` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0 COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remisions`
--

CREATE TABLE `guia_remisions` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `total` double NOT NULL DEFAULT 0,
  `quantity_total` double NOT NULL,
  `motivo_translado` varchar(5) NOT NULL,
  `num_dam` varchar(150) DEFAULT NULL,
  `type_transport` smallint(1) NOT NULL DEFAULT 1 COMMENT '1 es publico, 2 es privado',
  `punto_partida` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`punto_partida`)),
  `punto_llegada` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`punto_llegada`)),
  `transporte_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `conductor_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guia_remisions`
--

INSERT INTO `guia_remisions` (`id`, `serie`, `correlativo`, `n_operacion`, `user_id`, `client_id`, `type_client`, `total`, `quantity_total`, `motivo_translado`, `num_dam`, `type_transport`, `punto_partida`, `punto_llegada`, `transporte_datos`, `conductor_datos`, `description`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1003, 'T001', 1, 'T001-1', 6, 30, 2, 36, 6, '02', NULL, 1, '{\"ubigeo_region\":\"10\",\"ubigeo_provincia\":\"1006\",\"ubigeo_distrito\":\"100601\",\"region\":\"Hu\\u00e1nuco\",\"provincia\":\"Leoncio Prado\",\"distrito\":\"Rupa-Rupa\",\"address\":\"ppjj\"}', '{\"ubigeo_region\":\"15\",\"ubigeo_provincia\":\"1501\",\"ubigeo_distrito\":\"150101\",\"region\":\"Lima\",\"provincia\":\"Lima\",\"distrito\":\"Lima\",\"address\":\"ate\"}', '{\"n_document_ruc\":12345678945,\"razon_social_transportista\":\"si\",\"nro_mtc\":\"123\"}', NULL, 'hola', 'http://127.0.0.1:8000/storage/cdrs/69813b4ce44f0.zip', 'http://127.0.0.1:8000/storage/xml/FF-20161515648-1-T001-1003 20260202_190324.xml', '2026-02-02 19:03:20', '2026-02-02 19:03:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remision_details`
--

CREATE TABLE `guia_remision_details` (
  `id` bigint(20) NOT NULL,
  `guia_remision_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `peso` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guia_remision_details`
--

INSERT INTO `guia_remision_details` (`id`, `guia_remision_id`, `product_id`, `product_categorie_id`, `unidad_medida`, `quantity`, `peso`, `total`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1003, 20, 5, 'NIU', 6, 6, 36, NULL, '2026-02-02 19:03:20', '2026-02-02 19:03:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_04_012313_create_personal_access_tokens_table', 1),
(5, '2025_06_04_015917_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(2, 'register_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(3, 'list_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(4, 'edit_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(5, 'delete_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(6, 'register_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(7, 'list_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(8, 'edit_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(9, 'delete_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(10, 'register_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(11, 'edit_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(12, 'delete_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(13, 'list_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(14, 'register_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(15, 'list_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(16, 'edit_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(17, 'delete_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(18, 'register_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(19, 'list_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(20, 'edit_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(21, 'delete_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(22, 'register_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(23, 'list_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(24, 'edit_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(25, 'delete_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(26, 'register_guia_remision', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(27, 'list_guia_remision', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(28, 'nota_electronica', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(29, 'list_nota_electronica', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `price_general` double NOT NULL,
  `price_company` double NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_discount` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es inactivo y 2 activo',
  `max_discount` double NOT NULL DEFAULT 0,
  `disponiblidad` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es venta sin stock , 2 venta con stock',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `unidad_medida` varchar(25) NOT NULL,
  `stock` double NOT NULL DEFAULT 0,
  `include_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no 2 si',
  `is_icbper` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no y 2 si ',
  `is_ivap` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no y 2 si',
  `percentage_isc` double NOT NULL DEFAULT 0,
  `is_especial_nota` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es no y 2 si',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `categorie_id`, `imagen`, `price_general`, `price_company`, `description`, `is_discount`, `max_discount`, `disponiblidad`, `state`, `unidad_medida`, `stock`, `include_igv`, `is_icbper`, `is_ivap`, `percentage_isc`, `is_especial_nota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, '4T Aceite scooter expert 10W40 1LT MBL', 'MOT105935', 5, 'products/d5uF6uNvW0VEE8jGDc89hNQQFmmSpRNfwUJqAZXO.jpg', 35, 32, 'mucho gusto', 1, 0, 1, 1, 'LTR', 10, 1, 1, 1, 0, 1, '2026-01-28 01:09:42', '2026-01-28 01:15:46', NULL),
(20, '5100 Aceite motor 15W50 1L TS-', 'PAS25', 5, 'products/JXI7nRm1V0BqKubLPo7iqW9WuOahSwvnjLQCfQfS.jpg', 55, 53, 'hola', 1, 0, 1, 1, 'LTR', 45, 1, 1, 1, 0, 1, '2026-01-28 01:14:36', '2026-01-28 01:15:28', NULL),
(21, 'Cámara JS87', 'CA01', 6, 'products/gJbgQDDCWRwdc4o3bIaiwQMuMsF2xgY5OyhiUowE.jpg', 20, 18, 'CAMARA DURO', 1, 0, 1, 1, 'BG', 50, 1, 1, 1, 0, 1, '2026-02-03 03:48:53', '2026-02-03 03:48:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(2, 'Asesor Comercial', 'api', '2025-06-06 08:24:42', '2025-06-06 08:24:42'),
(3, 'Administrador de Sede', 'api', '2025-06-06 08:27:44', '2025-06-06 08:27:44'),
(4, 'Contador', 'api', '2025-06-06 08:30:05', '2025-06-06 08:30:05'),
(7, 'Supervisor', 'api', '2026-01-25 05:52:20', '2026-01-25 05:52:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(3, 7),
(7, 7),
(10, 3),
(12, 3),
(13, 3),
(13, 7),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(19, 7),
(20, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(27, 7),
(28, 4),
(29, 4),
(29, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `is_exportacion` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_global` double NOT NULL DEFAULT 0,
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sales_anticipos`)),
  `n_comprobante_anticipo` varchar(150) DEFAULT NULL,
  `amount_anticipo` double DEFAULT NULL,
  `igv` double NOT NULL,
  `igv_discount_general` double UNSIGNED DEFAULT 0,
  `type_payment` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT 0 COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT 0 COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `description` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `serie`, `correlativo`, `n_operacion`, `user_id`, `client_id`, `type_client`, `currency`, `subtotal`, `total`, `is_exportacion`, `discount`, `discount_global`, `sales_anticipos`, `n_comprobante_anticipo`, `amount_anticipo`, `igv`, `igv_discount_general`, `type_payment`, `state_sale`, `state_payment`, `debt`, `paid_out`, `retencion_igv`, `description`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1048, 'F001', 1, 'F001-1', 6, 30, 2, 'S/.', 128, 151.04, 0, 0, 0, NULL, NULL, NULL, 23.04, 0, 1, 1, 3, 0, 151.04, 0, NULL, 'http://127.0.0.1:8000/storage/cdrs/69796428c5299.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-1-F001-1048 20260128_011936.xml', '2026-01-27 20:16:34', '2026-01-27 20:19:36', NULL),
(1049, 'F001', 2, 'F001-2', 6, 30, 2, 'S/.', 265, 312.7, 0, 0, 0, NULL, NULL, NULL, 47.7, 0, 1, 1, 3, 0, 303.319, 1, NULL, 'http://127.0.0.1:8000/storage/cdrs/697964303e817.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-2-F001-1049 20260128_011944.xml', '2026-01-27 20:17:13', '2026-01-27 20:19:44', NULL),
(1050, 'F001', NULL, NULL, 6, 30, 2, 'S/.', 371, 437.78, 0, 0, 0, NULL, NULL, NULL, 66.78, 0, 1, 2, 1, 0, 437.78, 0, NULL, NULL, NULL, '2026-02-02 18:19:03', '2026-02-02 18:19:03', NULL),
(1051, 'B001', 1, 'B001-1', 6, 7, 1, 'S/.', 440, 519.2, 0, 0, 0, NULL, NULL, NULL, 79.2, 0, 1, 1, 3, 0, 503.624, 1, NULL, 'http://127.0.0.1:8000/storage/cdrs/69813131ef0b7.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-1-B001-1051 20260202_232017.xml', '2026-02-02 18:20:05', '2026-02-02 18:20:17', NULL),
(1052, 'F001', 4, 'F001-4', 6, 30, 2, 'S/.', 144, 169.92, 0, 0, 0, NULL, NULL, NULL, 25.92, 0, 1, 1, 3, 0, 164.8224, 1, 'CONTADO', 'http://127.0.0.1:8000/storage/cdrs/698170980fead.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-4-F001-1052 20260203_035048.xml', '2026-02-02 22:50:07', '2026-02-02 22:50:48', NULL),
(1053, 'F001', 5, 'F001-5', 6, 30, 2, 'S/.', 162, 191.16, 0, 0, 0, NULL, NULL, NULL, 29.16, 0, 1, 1, 3, 0, 191.16, 0, NULL, 'http://127.0.0.1:8000/storage/cdrs/6983ce306d61d.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-5-F001-1053 20260204_225440.xml', '2026-02-04 17:54:29', '2026-02-04 17:54:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) NOT NULL,
  `sale_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `tip_afe_igv` int(3) UNSIGNED NOT NULL DEFAULT 10,
  `per_icbper` double NOT NULL DEFAULT 0,
  `icbper` double NOT NULL DEFAULT 0,
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT 0,
  `isc` double UNSIGNED NOT NULL DEFAULT 0,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `price_base` double NOT NULL DEFAULT 0,
  `price_final` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0 COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `product_categorie_id`, `tip_afe_igv`, `per_icbper`, `icbper`, `percentage_isc`, `isc`, `unidad_medida`, `quantity`, `price_base`, `price_final`, `discount`, `subtotal`, `igv`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(56, 1048, 19, 5, 10, 0, 0, 0, 0, 'LTR', 4, 32, 37.76, 0, 128, 23.04, NULL, '2026-01-27 20:16:34', '2026-01-27 20:16:34', NULL),
(57, 1049, 20, 5, 10, 0, 0, 0, 0, 'LTR', 5, 53, 62.54, 0, 265, 47.7, NULL, '2026-01-27 20:17:14', '2026-01-27 20:17:14', NULL),
(58, 1050, 20, 5, 10, 0, 0, 0, 0, 'LTR', 7, 53, 62.54, 0, 371, 66.78, NULL, '2026-02-02 18:19:03', '2026-02-02 18:19:03', NULL),
(59, 1051, 20, 5, 10, 0, 0, 0, 0, 'LTR', 8, 55, 64.9, 0, 440, 79.2, NULL, '2026-02-02 18:20:05', '2026-02-02 18:20:05', NULL),
(60, 1052, 21, 6, 10, 0, 0, 0, 0, 'BG', 8, 18, 21.24, 0, 144, 25.92, NULL, '2026-02-02 22:50:07', '2026-02-02 22:50:07', NULL),
(61, 1053, 21, 6, 10, 0, 0, 0, 0, 'BG', 9, 18, 21.24, 0, 162, 29.16, NULL, '2026-02-04 17:54:30', '2026-02-04 17:54:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_payments`
--

CREATE TABLE `sale_payments` (
  `id` bigint(20) NOT NULL,
  `sale_id` bigint(20) NOT NULL,
  `method_payment` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `date_payment` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_payments`
--

INSERT INTO `sale_payments` (`id`, `sale_id`, `method_payment`, `amount`, `date_payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 1048, 'TRANSFERENCIA', 151.04, NULL, '2026-01-27 20:16:34', '2026-01-27 20:16:34', NULL),
(56, 1049, 'TRANSFERENCIA', 303.319, NULL, '2026-01-27 20:17:14', '2026-01-27 20:17:14', NULL),
(57, 1050, 'TRANSFERENCIA', 437.78, NULL, '2026-02-02 18:19:03', '2026-02-02 18:19:03', NULL),
(58, 1051, 'PLIN', 503.624, NULL, '2026-02-02 18:20:05', '2026-02-02 18:20:05', NULL),
(59, 1052, 'TRANSFERENCIA', 164.8224, NULL, '2026-02-02 22:50:07', '2026-02-02 22:50:07', NULL),
(60, 1053, 'TRANSFERENCIA', 191.16, NULL, '2026-02-04 17:54:30', '2026-02-04 17:54:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('14DqoFhrHtOKEnWaghvPOaiIQdGKJt0tB1jF3nb0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHozaUdMRGh6WW53czMwOEI4QXhjSlNNWWEwZnM5Y3hWMm82QmRWOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9EOEdWMzdscTZObEVZSDk3UFZjV1lXU2NkaFhMVGFjWExZV1hXR2NjLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550794),
('2CxeEk8bMrETvV1JoitFycvxujdgFPDpOFFmIEts', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0ZEY2QxbWVyRnY2NUdySTIxZTNRNENWc3lLY2JyY1JDQlBQbzI5dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770774781),
('33axlCMMaqJTyef8lmxdZIccaODfD373hoOttGAi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGFEQ1JERnR1T0JJc0Q2cGh0RFVvR1lCSW9aOU5DSnJvNDcwTmtuQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554857),
('37fda5KWmvOb1gPRApdquAikKwjhgEb2YfhCXHVR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGQ4N0pOT1VpdzNlaU1vVDY5b0M3ZG8xUU9OalVQeExPWWRlQ2JHZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555829),
('3xXUrCoQXYwE4Z8wB7u8S6ir9ANvy0VfEdOH6CBn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVNzYUgyelRNaG5aUURRRFJ4eTNBcnFZOVV2TU9PUTZPNUFrUzVXWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9nRHZwNkN3cXNWMUJUWm9hZFdCajZkNnZ1MkFWaU9vcWtEcmhJMlR3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549984),
('4CXxmKumD97eEC3H2lIBm3ehPuWorWZgXu2AHQTu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0tzaU1xdTZpOWtFcXZtNlY3dGYwa0JVWTBkZXdwQWlVamxTOUY5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554134),
('4fSpPQ6b3TL9VnpQm0jzXTBBIpbOolF0C8gmkpni', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTdscEV2TXRYaXZYRmtjd011YnJGQXZrQWlEeElpbXlxaEpISGhKTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554750),
('4xwQAYJdJISRoJuKjnQVn6lzt3Y7VtTPRHW8j3RT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0d1dDAzOFBpSmRDSEtIb1lmNElYcW5JcW8ySXF5eFBnTVNadmRQTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554174),
('5EkLxIlqHlj8aTlDfm1rzdgrwUn4YCaYAR6uocbq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFFobzJFWW9wV2JzVFVRUlV2SVlCUVluNGEzRzNJMmg5Rng2cHZ3NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554831),
('5mYUkZqx7Qx8j1dLjkdggrnaD1Mh4o2hFQeJnQJD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDc2aEhiTzVicnA2Z2Rob05kTkpIaEtvN1doYUNqbzNwZjVRd0NCTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555193),
('5WSAK9nRDccCr1WuvyvDP8z2YyawMlrh5M0sK4Iy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGtYRlVsTGNEWWlIYldvbmZ3UVJPOUZleFlLM0pkVkxIbjZtMkpWUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555824),
('79g4b2jn77ApDhCDQxIYDxExdaUhlNKGKAatKVZm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjFRZElSVzZDenhYV2djZHVhd1N3NzhRVG53dnJtTDVwNHcwaFplZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554177),
('7NuV1xxywJGP0JeUGBNfvrcEOWMdAotAs4KQwMI2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2F2RHR5UU5MYzlGSElVcDJXeVUzVFBaTWZDVlNVZ29PRHhGaVRVNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9iWklIQnZkSGtUakVTYWplWUJiTzdHWGhHdkttOXVCOWZuRjluSnJHLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550776),
('8DBFVZt6s3lj5gh5tQqJy1LYWJZv34kbg9yqFxGT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmdhNXJHTzdFeVpHV0t2emxaNkx0eTRGbTBEZnFVbUdySFA0VTRkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9nRHZwNkN3cXNWMUJUWm9hZFdCajZkNnZ1MkFWaU9vcWtEcmhJMlR3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549494),
('8IGRmKb4j34Ms637t76FaQhpxchnIKqvQJUxLaGP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekVBeDlzbXA5TzBKMGd2WldkMExxb280NzAwMXJ1TWd3RHBQZFJCVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9vSzZMY1VZSXVja0hpR3FJQUphYnIwa1VCMVlSVUFRaE12Qno3VVVRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550415),
('8LREOa6OXRNYbvlAmrLI8mTogNQJKtiUrvm05OCq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkFDU0o1MlRvaDQzbnI2MjVzN28wY3BOTnJkczJQU2Vpb01KQjhsNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9mVEoyV0RZNXVRY2ZXRERFbFpHY1RUU3lFTzRvN1pwVm5ZdWRBNE5qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550828),
('A8Zghr6Jk4QwNdpUVm1wpenkIvlOaGeN8IDbYsCT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0F4YjFjOEdFNlMxdTdKdTlSYTlUVldlN2dUUXBPM0RGazB3SFZyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9vSzZMY1VZSXVja0hpR3FJQUphYnIwa1VCMVlSVUFRaE12Qno3VVVRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550408),
('aqDPig26f3uSvf4aFVjdpe4BysbzgKRzpBQ2835H', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1QxeFdPcE9Pdm43UGxxUnJyMnltUnFXTURYSnFjdlpJYzBSekJjTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554811),
('aYsjOE1jDgKodpmChVok6jBCWZdffpVYP12jhQHC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUg5RnJqZHh1MUE3MHkwUTN5dm9yelJ5djB5cVVwVzRta0RGZ3VkUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554138),
('BdE7hwMmgIIi4jHGvMGT8V0gymjjqo0gQKBU6reR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3o1dDJEZThTdzIzS01LenFlcWdqY2E5aDU4NFhHWTlZcEpiYVAydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy80MEF0V1d6MkZJT1B4UENSM0tFS09lb2hVRmlEVjRGdHpQbmV4WVV3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769548858),
('BEGoHgS5q0FDulhvoVzOyIBODcknOhSiIngF2Fij', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2lUYUZPS01jNW9ZcHpxV05HTUZaM2JDY2NGM3FFV1kwRkxDZlRibyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555244),
('cfGMskkwQXjNS4lxvNyY6F5sr0qa6sJXoMKLdd8J', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmVSN2QzaDZpdmgwZjRPcE9yNkx2eEZXa2xoM0xBSU5Cb2oxNzlkdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555983),
('cx0kpearofG7V1wbCcFb8ZbieVxcMfiXYQeZPnOT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlE4b0pRM1NoSGFnQ2l5REpNY3RYbm1OS0FrbkMxWDA3UXpNOGZEMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555186),
('dJMYQ5evxsavvKy3TdNxrHLyFmZixUIyCktiMZCR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG1lV0dLVG1qc2NxWGRKSUJYM0xaMmhFNGZDZE9sTmxtbkhiZ0RaNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9YTUdmRWJmMmp6SnJVNXczN0duRG9WbW9qR3ZwcjhkcWYyM1dLVTNMLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769552870),
('DMPEkVZPFE2liyuxVOW0wSgHihFoSURoPSodo5qW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU1Mdk1YZXdzZmlBZXR3ZkRlc01QdUV2Q1VOVW5GbjRRRmhiakJmbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554141),
('eP937MDR9otAsagpbzaJgozRAKrmpaNul26oBpcx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUVpNjVLMnFrVXJjbUJFb0JyWXlCV3p3M0JlZjJWTmtpNmc4N2lDSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9nRHZwNkN3cXNWMUJUWm9hZFdCajZkNnZ1MkFWaU9vcWtEcmhJMlR3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549947),
('Ew1QkAg2GTeayIVW9TuRBPnjLmGetvYnJjLiPMcw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU1GaWVmdnN6MmxLeEZqZmpLcHNzdTVzNFlGOGl2OTRUcEdYTnlENyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82VFUwVE82alpmc1lJT0JFT0hBeGdpM0dUVDlIdTl3eG9OQWJTc3lZLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549011),
('fgcQ8dKuuR0j5RUWcelxzPT04ap8VNRX8N6TOK2U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDQycXAzbjRYd3N4NlVtRndWazJ1dFlHTm9sbkd0WlZBWG1DUlJxTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769556410),
('fRPwTfWKJdbWUd09pkGHg2zKAqCcmgcpq5ZAJnzc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDdwVjc2NUNHbkZMUkZrMDJ5T1RMb01HeWtSRjNQeEJVRFhDRUlKRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554873),
('G51sGggkeXYizjKojIJ9fnwkRfvoIA8kSIHmjApg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3JSY1JqdjdSTzZGOGVOYzZqRFNTa3VQTXBkN2ZWc2tsUWdjSndvdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555846),
('G7C1irkeGk0b3htwqEZ0fSyYgohp0NGRyhmRXR9e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEh6ZTY0Sm9DQmpvZHRPVkxKV2haMTlhVWsyNG5iMmFzaUFjdWVBTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554947),
('H07i5Sjhqugy3LpYPShHG1BOEcyLfwr1Bkv7ZDnF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hOcUtWdjJLSVkzcUtYNVZNSnBCUkZya1g2b3NHWFNCZmQwOVc3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82VFUwVE82alpmc1lJT0JFT0hBeGdpM0dUVDlIdTl3eG9OQWJTc3lZLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769548992),
('Icw4XLJ48xbtEdZXpa0XT3nC0vCGzGvTjL3ww6hh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkRMSURPeGdrMTNqaUZDaVlRYngycDZ0MTk2UjU0R0RSdEV3R2dKZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9tcGtHUFhWaG1HVllGUjBVaEZKRUl0MVVIcnJtbWx4RUNsb0djZE5PLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550504),
('iJIYqFybyzLv8hJjoWYDDupiShESqoykeT5ojgfU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianVWWGJRUXJlZWZqRXV1UXpTb3NGZUh5STJBcUJORmNtNEpQUVBNayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9iWklIQnZkSGtUakVTYWplWUJiTzdHWGhHdkttOXVCOWZuRjluSnJHLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550773),
('iKdxAhsU5ec7GJqPpnLGy5SRjsTKWb3miRJEv3w9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTQ0cmpHVVBOOGNTc2c4eEZ1RDFSamJiSndnZzIxZUNJS0xxMHRiViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9mVEoyV0RZNXVRY2ZXRERFbFpHY1RUU3lFTzRvN1pwVm5ZdWRBNE5qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550959),
('Iv7OiVXw8k5tJF86SCG45m9TFPSQawrSPP1nSS4G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekZGM1ZuSmRuWGhMNDdncUw1YXRleGdudWZ2aG4yUlMzcjJGV1dPayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554050),
('izhmTQ87bDOs6PzRMayNJCevYf94Kh3yXzaKzvzj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZURzZ2FUd0E3Nko4MFlIUVRyMHhINTljTnRaWDRSOTBwQkZDNmZqVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy80MEF0V1d6MkZJT1B4UENSM0tFS09lb2hVRmlEVjRGdHpQbmV4WVV3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769548853),
('J37oy3Mk9KAD35SpYxRNJUrVywnub0CnalenuEn3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamw2V3NIV0hHcjJIMnJVQno5TUNycE9jOUJwdHk5b21hVzhCZzJ3UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769556404),
('Kw15td0W9DHrBWDUaoNsDbPzeSEE9YuTHLyxAIzA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUV4T25KVjh6anh0YWVKMk1PaDI5RU9uNkN2RldmTmw4UldTdWJFMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9nRHZwNkN3cXNWMUJUWm9hZFdCajZkNnZ1MkFWaU9vcWtEcmhJMlR3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549795),
('Lh4YBll4wobsIVUGUHAVO4B4Q6C8JvGXx82UKb47', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3haMmJjVUp4aGlsa093eHZxYmJSRmRSTTM1WVhQV2FQaHJDeWxDeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9FeXBDUHh4aGdFUkhQQncyMnNYcmc1VmxreGM1NUVyYkREYjF5VFlnLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769552860),
('mLEfRLcPcq9yH4sjBAuCRfvzsXaoGGgmdBtWtU4l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzlidXAyNzFQdzZtajhPQ0FqckJCRkNlT0toMUVYRlpPcVNNVWxHNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554847),
('mtx2tFWIUuSlJiwmPdHFtSlh0f0kG1vLPqyt45tu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE1Xanh1VjhIQ0NQSGRLQ3JHTlo2TTc1UnVUNmpSMUFiZ1FkNGxrRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555711),
('MxwrDCAuDWWan0KaP3F7FGbO47Z3tuvxw4CMhIPG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGxXZHYxc3dvZkVJeU1kNWhydnRURWJMNGpNSWNkWTNhUWNrZ2x0biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770333046),
('nGLkYbzKRbg9TdQzVDz5uQC7kMivVzpWnnHCVjTl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkY0eG5pdjNqOHdBRU1lNTBqdGcxbzBTeWt2aFc3bEpOZGlZaFBKbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL1doc09TdkZHNVZ5cnVnMllIWEVYV2hrWHVrbzJVc1JsVVZVWDNNNXYucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769554156),
('o4FaF8rommMKq4NKe9RWkwFPR5iZvm6e40bNv8dX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjB4VU1YUmx6ZXlqM3daUE9oOEVLa3dlelc3Q2lDQ2pHdlVQeEg4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9EOEdWMzdscTZObEVZSDk3UFZjV1lXU2NkaFhMVGFjWExZV1hXR2NjLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550798),
('OcoGvy9nyw9VW975HgjHhpTgQ6QpTA7DfT9yD8TQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3NpWEU0Y3BDOG83c3FqQVAyNDRMczhpYkJzWlZLczdkUE1FYmtpdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9XT2Y0Tk5pd0JUVlZaZmpidW5QWnQ2MURrZWFHd1BUWTFWQ2x4ZHFtLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554879),
('oF7WN3mlLuRjIOrjxm5FckZxg9qoSFYB7kW9j3v2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDM0eDB2N3RvdDhoQXA3MUNwWWJ1aDQ5SGdabGJDc3U1RzNLVjE5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555966),
('PcU9Do2GGWC5zEoA0NxhQgVpwO2a5ttUQbmKz2LW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzJaWEk0eDh4VW14bUhlZW9vY0MyYTVsdTFZV01GUGxaWWVicllHaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9XT2Y0Tk5pd0JUVlZaZmpidW5QWnQ2MURrZWFHd1BUWTFWQ2x4ZHFtLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554952),
('qOdbJfojGzJKHu4eIO4JGECsVdI3Zneh14wdcj1P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTdkVm9hVjlVdHFTQUoxenhlYk9CY3dLbHZVdllSYUNQenVYY09ZaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9iWklIQnZkSGtUakVTYWplWUJiTzdHWGhHdkttOXVCOWZuRjluSnJHLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550561),
('qOxZw8DOUE0wu5cj0QksSfjgugt3QkzNoG4EibIi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHRCZXE5MUdZcXBrWW9Feml5ZktuM2tmMWdwTW1tTVl1UnpmOUkxSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550981),
('Qp1V6ZQEZY7D04l682ol6GYBRdKoo1TpsBMeQL3w', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHoyWDJRSkozRHRqS200OGxLejFoS1ZlMmRxbnJSQ0l4Q3hRWTBqcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555680),
('RL8kuqLhGPF0msRvLQOIUGENKxrRgQEZNMAj6U6y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW9VRGpscXdjd1dRblhQb2pjS2ViU3JUb2V3ZXpYWm4wOGdMeWp5biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9iWklIQnZkSGtUakVTYWplWUJiTzdHWGhHdkttOXVCOWZuRjluSnJHLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550769),
('RSBwgLXCnHATy0yW1rzG4VFRCD02a6ItoSXEeIOI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFhYdkgzZ0tZVzdlaGE2dmxJRU9QVVRFSktIdGtzaUhoTGdhSHllRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554842),
('s3F57l4IRaN0rVZwOHLTpF8zuhlMOgjmLKHdBtRP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHZIeUlSQ0xPbkQ1YmI1U1hiNWZkMjZhSHBGTVhqZVIyaXdnWnBySCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554818),
('shOjRdYn3mIFIVOY2PD5Ftfuf3tqo4dUCqd9omDk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUxyUG5VRTNRWlRBNHZqdVFxMGlTVVk3Wjk5eU9xYUdCNjhPTnp0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9tcGtHUFhWaG1HVllGUjBVaEZKRUl0MVVIcnJtbWx4RUNsb0djZE5PLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550499),
('T4vHoT19tSLhkTbq2kkTujVy8EHJ4ZVzp2mnKkGo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVZBMVBjVFliUjJFMnZCM2NpaHBJSnd4RkczdkFtMDF2ZFJZTm41QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555214),
('tTQmIPUIwku9boRSeo9n2bGvPvYLnmkVOy0I9yEy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm1ZSmVmd2hZaVo3TkpQVTNXclRGaERUdDl4ZlBuRFB6ZjBNbkRwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9EOEdWMzdscTZObEVZSDk3UFZjV1lXU2NkaFhMVGFjWExZV1hXR2NjLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550381),
('waCh070LWoDbVdpxazGkqCR7eQChwe7ex9BBbisu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamJ4UVdIY09pSnRLUmVDZTZJNmQ3YXFzaDJvQWo4N1V5U0hDSXo5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9zZm0zRlRIQnoyTGZueDNUelpnTVdDNnQ4V3hPRlpyR2tQR3VpMHozLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555988),
('wY27GBSP94xA7TBC2jC9xoJFj4Lhca9Q5QKVRnol', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmkwdmRZZ0NBWlpKTGNoU2kyejl2b1Y2eFRxV0hiTGxUbXdxdjJ6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554851),
('xdwKOpJ2Vm3QvTtiiylHHlpAcX2ZWYOTDAIpdHTq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakNYOTR4cG1xWG1pbW9icm56endOcVFBaEw0cjFxdW5icVlRWUJObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9nRHZwNkN3cXNWMUJUWm9hZFdCajZkNnZ1MkFWaU9vcWtEcmhJMlR3LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769549182),
('y9pFI4LeQUmTqyvrxpQ6G1TjP5EJQTll6gQVgr1A', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3FWZWZsR3Y2Mjh0VE0xUnRWUmxxcUFqbXFqWDZlY2xXZFBtZExEYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769554755),
('YFQ8i3fVEAlJInN00c4HskVdCo59QqMYrTa7yNp3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3Z2eGNKNG01dXJtSUhxR3JwOHJpMEJqSVdndTU5c1hjMWx2bUd0ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9XT2Y0Tk5pd0JUVlZaZmpidW5QWnQ2MURrZWFHd1BUWTFWQ2x4ZHFtLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555011),
('YMrnptGbWSqGWaxQ8xIrMbG68z03wKAif26hvsgc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG5JREtWa2F0aXpRRTlFRU5VdFk1emtzallTWG4zOFg4MGp6NEtrUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555231),
('yoBvaDQ1lBl7kRtHvl15jM3IqWAGep3xLWMkSWWO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFZqQmkzQjB6ZjRtZ0sySXYwdlBiWldiZzB4N0Q5RU5nNDMzMzZjNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9EenJUNXdjYnlyRWhHWVNqNjc3Uzd3Y0FDaUhRZUsxUlZDUmJEZXlQLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555674),
('ySd2K6NuKhl44JtI347LQBcVBGV3e214hcftVLnM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmd6cHdpcVJJMzdSMmVldVY0cHZkaFNQTjdkcndybXVYTGFXaXZFRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555006),
('Z18su9cdacLlj7duTprcQLJDbcd8pPS1NNVXmOUL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVVTMzhxZnJwd01BUDBaUkFqMXEyOWx5MEd4bkt3emxPalhZTWRYYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy80akY3djlIa2xXcnNtRE96SkJ5VHVKWmd4ZUs1UmZvNVFoZ1Rka2pULmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769553949),
('Z3ffIwSB1MFCtzJozEo60tVQxW2yEecNrdS75ydC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmVESFYyU29nenF4YWsyU0U0YkRHdkFvZk9UZ085SGRwcmNKYWQ0QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy92RlZkcHltYnNpM0FrbGxwYVpVS0l0Z2tUV0l0U0pES0pEWjNCVHVkLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769555976),
('zCebvztmDsOKyJArOA0YGS2fqA5ZzipAi80pKB9B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/2.4.21 Chrome/142.0.7444.235 Electron/39.2.7 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTh1M3FzOWVyVFhEODNYc0J0OGM3UVZvU0llRG85V1hWSnIxMEZUdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9vSzZMY1VZSXVja0hpR3FJQUphYnIwa1VCMVlSVUFRaE12Qno3VVVRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769550411);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `type_document` varchar(50) DEFAULT NULL,
  `n_document` varchar(25) DEFAULT NULL,
  `gender` varchar(1) DEFAULT 'M',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `surname`, `avatar`, `role_id`, `phone`, `type_document`, `n_document`, `gender`, `state`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Nolberto Luis', 'nolberto.sumaran@gmail.com', 'Sumaran Pimentel', 'users/vFVdpymbsi3AkllpaZUKItgkTWItSJDKJDZ3BTud.jpg', 1, '940078299', 'DNI', '75692184', 'M', 1, NULL, '$2y$12$McwV9K72eapcwybCVWsPP.Z/InOlVX0.ro87B/h7uONzkf2SDy/Oq', NULL, '2026-01-22 20:47:31', '2026-01-28 03:44:42', NULL),
(7, 'Sadith', 'rocio12@gmail.com', 'Rojas Ventura', 'users/DzrT5wcbyrEhGYSj677S7wcACiHQeK1RVCRbDeyP.jpg', 2, '940078299', 'DNI', '7654321', 'F', 1, NULL, '$2y$12$EW.Y/sJTJUqiolz5TlObr.sx8tJTRuijvIj25q8UoLzbsX3gkyhlC', NULL, '2026-01-22 21:35:25', '2026-01-28 04:14:16', NULL),
(8, 'Romalda', 'romalda.p@gmail.com', 'Doroteo Pimentel', 'users/FRROSCD0SrP6aQfRZDN9LJnq8INZzAxYWdFHwRgC.png', 4, '930518038', 'DNI', '8765432', 'F', 1, NULL, '$2y$12$seTj7EqZfwLaekR92oXP9O827krbByA8MlpXXJwIRbRPvDGCYHNUS', NULL, '2026-01-22 21:43:21', '2026-01-22 21:43:21', NULL),
(9, 'Luis', 'luis12sumaran@hotmail.com', 'Pimentel', 'users/o0WOEE67AvSyyNTMmXq7SuZDUzJeT5hafIm5COlT.jpg', 2, '940078299', 'DNI', '1234568', 'M', 1, NULL, '$2y$12$Dno/vHSq.9h.l20NqwnmY.JJlKC3XYP8jXy5f90DEFY1327nawovi', NULL, '2026-01-25 08:50:05', '2026-01-25 08:50:05', NULL),
(10, 'Lucero', 'lucero.rojas@gmail.com', 'Rojas', 'users/wflYSVXO1IH9q1o5v4tJWjr5Pxt2LhNWRgeRSYij.jpg', 2, '930518038', 'DNI', '4567892', 'F', 1, NULL, '$2y$12$3YkKcrJC.HYwE93kAomymOlAldsCNgBHG6TfLRvW303OZXK.gumYu', NULL, '2026-01-28 04:51:13', '2026-01-28 04:51:13', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories` (`categorie_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `restric_role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1054;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `restric_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
