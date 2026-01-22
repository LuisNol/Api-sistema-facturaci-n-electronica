-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2025 a las 13:11:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sv_facturacion_plan_1`
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
(1, 'Soporte Técnico', 'categories/xSnZvVKQCIxvsI4LDBzNQxI1PpiV8AypmvpTThCD.png', 1, '2025-06-13 03:29:22', '2025-06-13 03:29:22', NULL),
(2, 'Alimentos', 'categories/VIRjkl7WUCCttClfBLnyHd6KyWBk8JooWvhNREC7.png', 1, '2025-06-13 03:32:29', '2025-06-13 03:32:29', NULL),
(3, 'Mascotas 2026', 'categories/Ta809TIekwzl4yIVmDL7RNJGzQZ3QJTocRb8GdSr.png', 1, '2025-06-13 03:33:33', '2025-07-09 01:57:59', NULL),
(4, 'Otros', 'categories/y4nr68tvY97MQnFkr6WtCXWDdNB8hlP2DjAR6qqi.png', 1, '2025-07-18 00:00:59', '2025-07-18 00:00:59', NULL);

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
(1, 'Jose Jaico', 'Mendoza', 'Jose Jaico Mendoza', '99999999', 'josemendoza@gmail.com', 1, 'DNI', '74856694', 'M', '1997-09-30 05:00:00', 1, 'Peru', '190202', '1902', '19', 'Chacayan', 'Daniel Alcides Carrión', 'Pasco', 1, '2025-06-20 02:06:13', '2025-06-20 02:40:13', NULL),
(2, NULL, NULL, 'Distribuidora Surco EIRL 123', '94845454', 'distribuidorasurco@eirl.com', 2, 'RUC', '20161515649', 'M', '2020-06-09 05:00:00', 1, 'Peru', '200403', '2004', '20', 'Chalaco', 'Morropón', 'Piura', 1, '2025-06-20 02:16:04', '2025-07-23 02:31:37', NULL),
(3, 'Sofia', 'Gutierrez', 'Sofia Gutierrez', '985632541', 'gutierrezsofia@gmail.com', 1, 'PASAPORTE', '546857465456', 'F', '1995-06-13 05:00:00', 1, 'ASENT.H. ESPERANZA BAJA', '120304', '1203', '12', 'San Luis de Shuaro', 'Chanchamayo', 'Junín', 1, '2025-06-20 02:43:34', '2025-06-20 02:43:34', NULL),
(4, NULL, NULL, 'TECNOLOGIA S.A.C 2025', '945522221', 'tecnologiasac@gmail.com', 2, 'RUC', '20602391256', NULL, '2005-06-14 05:00:00', 1, 'Peru', '150514', '1505', '15', 'San Luis', 'Cañete', 'Lima', 1, '2025-06-20 02:44:59', '2025-07-09 03:17:50', NULL),
(5, NULL, NULL, 'Laravest Sac. TEC', '99999999', 'laravest@mail.com', 2, 'RUC', '20161515648', NULL, '2000-06-06 05:00:00', 1, 'Peru', '090203', '0902', '09', 'Anta', 'Acobamba', 'Huancavelica', 1, '2025-07-23 02:31:40', '2025-07-23 02:31:40', NULL);

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
(1, 'Laravest Sac. TEC', 'Laravest', '958962565', 'echodeveloper960@gmail.com', '20161515648', '2025-04-29 05:00:00', 'Peru', 'Av. Primavera 2711, Santiago de Surco 25884', '0000', '150101', '1501', '15', 'Lima', 'Lima', 'Lima', '2025-04-30 00:37:01', '2025-06-13 02:41:48', NULL);

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

--
-- Volcado de datos para la tabla `electronic_notes`
--

INSERT INTO `electronic_notes` (`id`, `serie`, `correlativo`, `n_operacion`, `doc_nota`, `type_nota`, `n_comprobante`, `user_id`, `client_id`, `type_client`, `currency`, `subtotal`, `total`, `is_exportacion`, `discount`, `discount_global`, `igv`, `type_payment`, `state_sale`, `state_payment`, `debt`, `paid_out`, `retencion_igv`, `state_entrega`, `amount_anticipo`, `sales_anticipos`, `description`, `description_motivo`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FF01', 1, 'FF01-1', '07', '07', 'F001-24', 1, 4, 2, 'S/.', 1271.18644, 1500, 0, 0, 0, 228.81356, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 'dasdasdsa', 'fdssdfds', '/storage/cdrs/6879b3cd8a438.zip', '/storage/xml/FF-20161515648-1-FF01-1 20250717_213909.xml', '2025-07-17 21:39:09', '2025-07-17 21:39:09', NULL),
(2, 'FF01', 2, 'FF01-2', '07', '06', 'F001-24', 1, 4, 2, 'S/.', 1271.18644, 1500, 0, 0, 0, 228.81356, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 'dasdasdsa', 'fdssdfds', '/storage/cdrs/6879b3e1b73b8.zip', '/storage/xml/FF-20161515648-2-FF01-2 20250717_213929.xml', '2025-07-17 21:39:29', '2025-07-17 21:39:29', NULL),
(3, 'FF01', 3, 'FF01-3', '07', '05', 'F001-24', 1, 4, 2, 'S/.', 635.59, 750, 0, 0, 0, 114.41, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 'dasdasdsa', 'fdssdfds', '/storage/cdrs/6879b3e9531ef.zip', '/storage/xml/FF-20161515648-3-FF01-3 20250717_213937.xml', '2025-07-17 21:39:37', '2025-07-17 21:39:37', NULL),
(4, 'FF01', 4, 'FF01-4', '07', '04', 'F001-24', 1, 4, 2, 'S/.', 50, 59, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 'dasdasdsa', 'fdssdfds', '/storage/cdrs/6879b3f1c07e6.zip', '/storage/xml/FF-20161515648-4-FF01-4 20250717_213945.xml', '2025-07-17 21:39:45', '2025-07-17 21:39:45', NULL),
(5, 'FF01', 5, 'FF01-5', '08', '01', 'F001-24', 1, 4, 2, 'S/.', 50, 59, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 'dasdasdsa', 'hfghfghgf', '/storage/cdrs/6879b40be818c.zip', '/storage/xml/FF-20161515648-5-FF01-5 20250717_214011.xml', '2025-07-17 21:40:11', '2025-07-17 21:40:11', NULL),
(34, 'FF01', 6, 'FF01-6', '07', '01', 'F001-22', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, 96.40678, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 'eterretre', '/storage/cdrs/687a372c65428.zip', '/storage/xml/FF-20161515648-6-FF01-34 20250718_065940.xml', '2025-07-18 06:59:40', '2025-07-18 06:59:40', NULL),
(35, 'FF01', 7, 'FF01-7', '07', '01', 'F001-22', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, 96.40678, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 'vcxvxcvxc', '/storage/cdrs/687a519feb951.zip', '/storage/xml/FF-20161515648-7-FF01-35 20250718_085231.xml', '2025-07-18 08:52:28', '2025-07-18 08:52:31', NULL),
(39, 'FF01', 8, 'FF01-8', '07', '01', 'F001-22', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, 96.40678, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 'vcxvxcvxc', '/storage/cdrs/687a583a85b9c.zip', '/storage/xml/FF-20161515648-8-FF01-39 20250718_092042.xml', '2025-07-18 09:20:42', '2025-07-18 09:20:42', NULL),
(40, 'FF01', 9, 'FF01-9', '07', '05', 'F001-22', 1, 4, 2, 'S/.', 101.69, 120, 0, 0, 0, 18.31, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 'hgfhfghfghgf', '/storage/cdrs/687a5b7f6c630.zip', '/storage/xml/FF-20161515648-9-FF01-40 20250718_093439.xml', '2025-07-18 09:34:39', '2025-07-18 09:34:39', NULL);

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

--
-- Volcado de datos para la tabla `electronic_note_details`
--

INSERT INTO `electronic_note_details` (`id`, `electronic_note_id`, `product_id`, `product_categorie_id`, `tip_afe_igv`, `per_icbper`, `icbper`, `percentage_isc`, `isc`, `unidad_medida`, `quantity`, `price_base`, `price_final`, `discount`, `subtotal`, `igv`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, 10, 0, 0, 0, 0, 'NIU', 2, 635.59322, 750, 0, 1271.18644, 228.8135592, NULL, '2025-07-17 21:39:09', '2025-07-17 21:39:09', NULL),
(2, 2, 2, 1, 10, 0, 0, 0, 0, 'NIU', 2, 635.59322, 750, 0, 1271.18644, 228.8135592, NULL, '2025-07-17 21:39:29', '2025-07-17 21:39:29', NULL),
(3, 3, 2, 1, 10, 0.5, 0, 0, 0, 'NIU', 1, 635.59322, 750, 0, 635.59, 114.41, NULL, '2025-07-17 21:39:37', '2025-07-17 21:39:37', NULL),
(4, 4, 10, 4, 10, 0.5, 0, 0, 0, 'ZZ', 1, 50, 59, 0, 50, 9, NULL, '2025-07-17 21:39:45', '2025-07-17 21:39:45', NULL),
(5, 5, 11, 4, 10, 0.5, 0, 0, 0, 'ZZ', 1, 50, 59, 0, 50, 9, NULL, '2025-07-17 21:40:11', '2025-07-17 21:40:11', NULL),
(34, 34, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-18 06:59:40', '2025-07-18 06:59:40', NULL),
(35, 35, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-18 08:52:28', '2025-07-18 08:52:28', NULL),
(39, 39, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-18 09:20:42', '2025-07-18 09:20:42', NULL),
(40, 40, 2, 1, 10, 0.5, 0, 0, 0, 'NIU', 10, 10.16949, 12, 0, 101.69, 18.31, NULL, '2025-07-18 09:34:39', '2025-07-18 09:34:39', NULL);

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
(1001, 'T001', NULL, NULL, 1, 4, 2, 25, 5, '01', NULL, 1, '{\"ubigeo_region\":\"15\",\"ubigeo_provincia\":\"1501\",\"ubigeo_distrito\":\"150101\",\"region\":\"Lima\",\"provincia\":\"Lima\",\"distrito\":\"Lima\",\"address\":\"AV LIMA\"}', '{\"ubigeo_region\":\"13\",\"ubigeo_provincia\":\"1301\",\"ubigeo_distrito\":\"130101\",\"region\":\"La Libertad\",\"provincia\":\"Trujillo\",\"distrito\":\"Trujillo\",\"address\":\"AV TRUJILLO\"}', '{\"n_document_ruc\":20161515668,\"razon_social_transportista\":\"TRANSPORTES S.A.C\",\"nro_mtc\":\"0001\"}', NULL, 'AL CLIENTE EMPRESA SE LE VENDIO ESTOS PRODUCTOS', NULL, NULL, '2025-07-24 19:07:18', '2025-07-24 19:07:18', NULL),
(1002, 'T001', NULL, NULL, 1, 5, 2, 18, 9, '02', NULL, 2, '{\"ubigeo_region\":\"15\",\"ubigeo_provincia\":\"1501\",\"ubigeo_distrito\":\"150101\",\"region\":\"Lima\",\"provincia\":\"Lima\",\"distrito\":\"Lima\",\"address\":\"Peru\"}', '{\"ubigeo_region\":\"13\",\"ubigeo_provincia\":\"1301\",\"ubigeo_distrito\":\"130101\",\"region\":\"La Libertad\",\"provincia\":\"Trujillo\",\"distrito\":\"Trujillo\",\"address\":\"Peru\"}', NULL, '{\"type_document\":\"1\",\"name_document\":\"DNI\",\"n_document\":70807621,\"full_name_conductor\":\"RODRIGUEZ VALENCIA\",\"placa_vehiculo\":\"ABC123\",\"n_licencia\":\"0001122020\"}', 'sadfsdfsdfds', NULL, NULL, '2025-07-24 19:09:33', '2025-07-24 19:09:33', NULL);

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
(2, 1001, 2, 1, 'BX', 5, 5, 25, NULL, '2025-07-24 19:07:18', '2025-07-24 19:07:18', NULL),
(3, 1002, 3, 3, 'SET', 9, 2, 18, NULL, '2025-07-24 19:09:33', '2025-07-24 19:09:33', NULL);

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
(2, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4);

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
(1, 'Memoria Ram 16GB RAM 2026', 'ZTD23455', 1, 'products/kOJEzAQ805WwWN7pOQx21lwR67EBPcHF7Cg4blDj.png', 500, 600, 'sdafadsfadsfdas', 2, 25, 1, 1, 'NIU', 5, 2, 1, 1, 0, 1, '2025-06-18 02:34:42', '2025-07-18 02:13:07', NULL),
(2, 'Placa Madre Asus ZT-124', 'PAS25', 1, 'products/ULV59dPokOOuEcbWeHmWpGg2r52UI40mtq2WWCnw.png', 800, 750, 'dsaDSA', 2, 25, 1, 1, 'NIU', 5, 2, 1, 1, 0, 1, '2025-06-18 02:38:42', '2025-06-18 02:38:42', NULL),
(3, 'Hyundai Tucson 2025', '25101503', 1, 'products/rPZRQOJtVp5xfvzWjHuxtSMtW74Q5Z7yY5LnALwJ.png', 350.5, 650.8, 'hjhkjjk', 1, 0, 1, 1, 'NIU', 6, 2, 1, 1, 0, 1, '2025-06-18 02:41:12', '2025-06-18 02:41:12', NULL),
(4, 'Johnnie Walker 2025', '25101508', 3, 'products/wZaWWI1SE5iTA5nZXncSbAHfdPNObuwwZMQyyth7.png', 650, 540, 'hhhgghg', 1, 0, 1, 1, 'BO', 15, 2, 1, 1, 17, 1, '2025-06-18 02:42:48', '2025-06-28 01:37:22', NULL),
(5, 'Arroz Pilado - San Jose', 'JWA2024', 2, 'products/qXMooF45TX08nJKAW1BmaatFiBbekPK2RptSKQpz.png', 250, 350, 'gsdgfds', 1, 0, 1, 1, 'KGM', 500, 2, 1, 2, 0, 1, '2025-06-25 02:09:42', '2025-06-25 02:09:42', NULL),
(6, 'Bolsa de Plastico - Ben', 'JWA20245', 2, 'products/lOrZgsmZsx453urfbZ6TFdQN1F6kSLuATtLOc5CN.png', 0.05, 0.05, 'fdsfds', 1, 0, 1, 1, 'BG', 5, 1, 2, 1, 0, 1, '2025-06-28 01:27:13', '2025-06-28 01:27:13', NULL),
(7, 'DESARROLLO DE SOFTWARE - COBRO INICIAL', 'SOFTWARE-2025', 1, 'products/Mw2hQPfGRW9I7LbHjAE1DbLlAxoYerKeveOOYw5Z.png', 2000, 5000, 'fdgdfgfd', 1, 0, 1, 1, 'ZZ', 1, 2, 1, 1, 0, 1, '2025-07-11 01:42:20', '2025-07-11 01:42:20', NULL),
(8, 'DESARROLLO DE SOFTWARE - COBRO MEDIO', 'SOFTWARE-A-2025', 1, 'products/JNWWuSez8WXV3asKMy9N38w27N64HS3wzYF0yXTD.png', 2000, 3500, 'FDSGDFG', 1, 0, 1, 1, 'ZZ', 1, 2, 1, 1, 0, 1, '2025-07-11 01:43:07', '2025-07-11 01:43:07', NULL),
(9, 'DESARROLLO DE SOFTWARE - COBRO FINAL', 'SOFTWARE-b-2025', 1, 'products/GtbVnQxY1j4Mr5ArJrACOfXL2ejnr4bRapHbHLAu.png', 2500, 10000, 'GDFGFDGF', 1, 0, 1, 1, 'ZZ', 1, 2, 1, 1, 0, 1, '2025-07-11 01:43:54', '2025-07-11 01:43:54', NULL),
(10, 'Descuento Global', 'DG', 4, 'products/PKUOm2KIq2Hfg7uX7tKTqnUnsRwOByE7r4dep23Y.png', 0, 0, 'Descuento Global', 1, 0, 1, 1, 'ZZ', 1, 1, 1, 1, 0, 2, '2025-07-18 00:01:48', '2025-07-18 00:01:48', NULL),
(11, 'Interés por mora', 'IPM23', 4, 'products/jyDgwnngidZAScKBGLCGAqMC5znekux1SJo0pb9L.png', 0, 0, 'Interés por mora', 1, 0, 1, 1, 'ZZ', 1, 1, 1, 1, 0, 2, '2025-07-18 00:02:47', '2025-07-18 00:02:47', NULL),
(12, 'Aumento en el valor', 'AV20', 4, 'products/G7VHug5lIJolNRTBcnzvWzksL1zlO47D4opibaae.png', 0, 0, 'Aumento en el valor', 1, 0, 1, 1, 'ZZ', 1, 1, 1, 1, 0, 2, '2025-07-18 00:04:20', '2025-07-18 06:17:20', '2025-07-18 06:17:20'),
(13, 'Penalidades/ otros conceptos', 'PC25', 4, 'products/OX9BTAP1GhQcpgVeekpznl0UTIdrNM70jpFCzfsn.png', 0, 0, 'Penalidades/ otros conceptos', 1, 0, 1, 1, 'ZZ', 1, 1, 1, 1, 0, 2, '2025-07-18 00:05:09', '2025-07-18 00:05:09', NULL);

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
(4, 'Contador', 'api', '2025-06-06 08:30:05', '2025-06-06 08:30:05');

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
(10, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4);

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
(1000, 'F001', 1, 'F001-1', 1, 4, 2, 'S/.', 1016.94915, 1200, 0, 0, 0, NULL, NULL, NULL, 183.05085, 0, 1, 1, 3, 0, 1200, 0, 'TODO MUY BIEN', '/storage/cdrs/686ddf6d03872.zip', '/storage/xml/R-20161515648-1-F001-1000 20250709_031805.xml', '2025-07-01 20:32:43', '2025-07-08 22:18:05', NULL),
(1001, 'F001', NULL, NULL, 1, 2, 2, 'S/.', 1271.18644, 1500, 0, 0, 0, NULL, NULL, NULL, 228.81356, 0, 1, 1, 3, 0, 1440, 2, NULL, NULL, NULL, '2025-07-01 20:35:26', '2025-07-01 20:35:26', NULL),
(1002, 'B001', 1, 'B001-1', 1, 1, 1, 'S/.', 423.72881, 440.67796, 0, 0, 100, NULL, NULL, NULL, 16.94915, 0, 1, 1, 3, 0, 340.67796, 0, 'gfgdfgfd', '/storage/cdrs/686de1af422f8.zip', '/storage/xml/R-20161515648-1-B001-1002 20250709_032743.xml', '2025-07-01 20:40:26', '2025-07-08 22:27:43', NULL),
(1003, 'B001', NULL, NULL, 1, 1, 1, 'S/.', 423.72881, 440.67796, 0, 0, 100, NULL, NULL, NULL, 16.94915, 0, 1, 1, 3, 0, 340.67796, 0, 'gfgdfgfd', NULL, NULL, '2025-07-01 20:40:26', '2025-07-01 20:40:26', NULL),
(1004, 'B001', NULL, NULL, 1, 3, 1, 'S/.', 1355.9322, 1355.9322, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, 1, 3, 0, 1355.9322, 0, 'dfsfsdfds', NULL, NULL, '2025-07-01 20:43:45', '2025-07-01 20:43:45', NULL),
(1005, 'F001', NULL, NULL, 1, 4, 2, 'S/.', 551.52542, 650.7999992, 0, 0, 0, NULL, NULL, NULL, 99.27458, 0, 1, 1, 3, 0, 624.768, 2, NULL, NULL, NULL, '2025-07-01 20:47:31', '2025-07-03 21:28:46', NULL),
(1006, 'F001', NULL, NULL, 1, 2, 2, 'S/.', 1079.028748, 1255.6659205268, 0, 0, 0, NULL, NULL, NULL, 176.6371725268, 0, 1, 2, 3, 0, 1390.15158, 0, 'sdsd', NULL, NULL, '2025-07-03 21:27:27', '2025-07-04 02:34:38', NULL),
(1007, 'F001', 2, 'F001-2', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, NULL, NULL, NULL, 96.40678, 0, 1, 1, 3, 0, 632, 0, NULL, '/storage/cdrs/686de7a26a5f0.zip', '/storage/xml/R-20161515648-2-F001-1007 20250709_035306.xml', '2025-07-08 22:28:57', '2025-07-08 22:53:06', NULL),
(1008, 'F001', 3, 'F001-3', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, NULL, NULL, NULL, 96.40678, 0, 1, 1, 3, 0, 632, 0, NULL, '/storage/cdrs/68705eab573b0.zip', '/storage/xml/R-20161515648-3-F001-1008 20250711_004531.xml', '2025-07-10 19:44:36', '2025-07-10 19:45:31', NULL),
(1009, 'F001', 4, 'F001-4', 1, 2, 2, 'S/.', 551.52542, 650.8, 0, 0, 0, NULL, NULL, NULL, 99.27458, 0, 1, 1, 3, 0, 631.276, 1, NULL, '/storage/cdrs/687062bad44b2.zip', '/storage/xml/R-20161515648-4-F001-1009 20250711_010250.xml', '2025-07-10 19:58:05', '2025-07-10 20:02:50', NULL),
(1010, 'F001', 5, 'F001-5', 1, 2, 2, 'S/.', 508.47458, 600, 0, 0, 0, NULL, NULL, NULL, 91.52542, 0, 1, 1, 3, 0, 576, 2, NULL, '/storage/cdrs/687063fe205de.zip', '/storage/xml/R-20161515648-5-F001-1010 20250711_010814.xml', '2025-07-10 20:08:09', '2025-07-10 20:08:14', NULL),
(1011, 'F001', 6, 'F001-6', 1, 4, 2, 'S/.', 635.59322, 750, 0, 0, 0, NULL, NULL, NULL, 114.40678, 0, 1, 1, 3, 0, 775.42373, 3, 'dfsfsdf', '/storage/cdrs/68706559dea83.zip', '/storage/xml/R-20161515648-6-F001-1011 20250711_011401.xml', '2025-07-10 20:13:55', '2025-07-10 20:14:01', NULL),
(1012, 'F001', 7, 'F001-7', 1, 2, 2, 'S/.', 635.59322, 750, 0, 0, 0, NULL, NULL, NULL, 114.40678, 0, 1, 1, 3, 0, 775.42373, 3, NULL, '/storage/cdrs/687065914832f.zip', '/storage/xml/R-20161515648-7-F001-1012 20250711_011457.xml', '2025-07-10 20:14:50', '2025-07-10 20:14:57', NULL),
(1013, 'F001', 8, 'F001-8', 1, 2, 2, 'S/.', 635.59322, 750, 0, 0, 0, NULL, NULL, NULL, 114.40678, 0, 1, 1, 3, 0, 775.42373, 3, NULL, '/storage/cdrs/687065dd9edc8.zip', '/storage/xml/R-20161515648-8-F001-1013 20250711_011613.xml', '2025-07-10 20:16:05', '2025-07-10 20:16:13', NULL),
(1014, 'F001', 9, 'F001-9', 1, 4, 2, 'S/.', 391.13429, 473.50717, 0, 0, 0, NULL, NULL, NULL, 82.37288, 0, 1, 1, 3, 0, 540, 0, NULL, '/storage/cdrs/687068e364184.zip', '/storage/xml/R-20161515648-9-F001-1014 20250711_012907.xml', '2025-07-10 20:29:02', '2025-07-10 20:29:07', NULL),
(1015, 'F001', 10, 'F001-10', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, NULL, NULL, NULL, 96.40678, 0, 1, 1, 3, 0, 606.72, 2, NULL, '/storage/cdrs/6870695887ceb.zip', '/storage/xml/R-20161515648-10-F001-1015 20250711_013104.xml', '2025-07-10 20:30:48', '2025-07-10 20:31:04', NULL),
(1016, 'F001', 11, 'F001-11', 1, 2, 2, '$.', 297.0339, 297.0339, 1, 0, 0, NULL, NULL, NULL, 0, 0, 1, 1, 3, 0, 297.0339, 0, NULL, '/storage/cdrs/68706b541d0a0.zip', '/storage/xml/R-20161515648-11-F001-1016 20250711_013932.xml', '2025-07-10 20:35:44', '2025-07-10 20:39:32', NULL),
(1017, 'F001', 12, 'F001-12', 1, 4, 2, 'S/.', 4237.28814, 5000, 0, 0, 0, NULL, NULL, NULL, 762.71186, 0, 1, 1, 3, 0, 5000, 0, NULL, '/storage/cdrs/68706ccb63218.zip', '/storage/xml/R-20161515648-12-F001-1017 20250711_014547.xml', '2025-07-10 20:45:37', '2025-07-10 20:46:10', NULL),
(1018, 'F001', 13, 'F001-13', 1, 4, 2, 'S/.', 2966.10169, 3500, 0, 0, 0, NULL, NULL, NULL, 533.89831, 0, 1, 1, 3, 0, 3500, 0, 'FSDFDS', '/storage/cdrs/68706d1b2bf9b.zip', '/storage/xml/R-20161515648-13-F001-1018 20250711_014707.xml', '2025-07-10 20:47:00', '2025-07-10 20:47:07', NULL),
(1019, 'F001', NULL, NULL, 1, 4, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186},{\"id\":1018,\"n_operacion\":\"F001-13\",\"subtotal\":2966.10169,\"total\":3500,\"igv\":533.89831}]', NULL, 7203.39, 1525.42373, 1296.61, 1, 1, 3, 0, 2796.61, 0, NULL, NULL, NULL, '2025-07-10 21:42:50', '2025-07-10 21:42:50', '2025-07-10 21:49:17'),
(1020, 'F001', 14, 'F001-14', 1, 4, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186},{\"id\":1018,\"n_operacion\":\"F001-13\",\"subtotal\":2966.10169,\"total\":3500,\"igv\":533.89831}]', NULL, 7203.39, 1525.42373, 1296.61, 1, 1, 3, 0, 1500, 0, NULL, '/storage/cdrs/6870863d6e19f.zip', '/storage/xml/R-20161515648-14-F001-1020 20250711_033421.xml', '2025-07-10 21:51:03', '2025-07-10 22:34:21', NULL),
(1021, 'F001', 15, 'F001-15', 1, 2, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186},{\"id\":1018,\"n_operacion\":\"F001-13\",\"subtotal\":2966.10169,\"total\":3500,\"igv\":533.89831}]', NULL, 7203.39, 1525.42373, 1296.61, 1, 1, 3, 0, 1500, 0, NULL, '/storage/cdrs/6870866e9fe82.zip', '/storage/xml/R-20161515648-15-F001-1021 20250711_033510.xml', '2025-07-10 22:22:24', '2025-07-10 22:35:10', NULL),
(1022, 'F001', 16, 'F001-16', 1, 4, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186},{\"id\":1018,\"n_operacion\":\"F001-13\",\"subtotal\":2966.10169,\"total\":3500,\"igv\":533.89831}]', NULL, 7203.39, 1525.42373, 1296.61, 1, 1, 3, 0, 1500, 0, NULL, '/storage/cdrs/68708ac3301c5.zip', '/storage/xml/R-20161515648-16-F001-1022 20250711_035339.xml', '2025-07-10 22:48:18', '2025-07-10 22:53:39', NULL),
(1023, 'F001', 18, 'F001-18', 1, 2, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186},{\"id\":1018,\"n_operacion\":\"F001-13\",\"subtotal\":2966.10169,\"total\":3500,\"igv\":533.89831}]', NULL, 7203.39, 1525.42373, 1296.61, 1, 1, 3, 0, 1500, 0, NULL, '/storage/cdrs/687128953c6b1.zip', '/storage/xml/R-20161515648-18-F001-1023 20250711_150701.xml', '2025-07-10 22:55:54', '2025-07-11 10:07:01', NULL),
(1024, 'F001', 17, 'F001-17', 1, 2, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1017,\"n_operacion\":\"F001-12\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186}]', NULL, 4237.29, 1525.42373, 762.71, 1, 1, 3, 0, 5000, 0, NULL, '/storage/cdrs/68711b0f37804.zip', '/storage/xml/R-20161515648-17-F001-1024 20250711_140919.xml', '2025-07-11 08:51:10', '2025-07-11 09:09:19', NULL),
(1025, 'F001', 20, 'F001-20', 1, 4, 2, 'S/.', 4237.28814, 5000, 0, 0, 0, NULL, NULL, NULL, 762.71186, 0, 1, 1, 3, 0, 5000, 0, 'hfghgfh', '/storage/cdrs/6876f94b40b6c.zip', '/storage/xml/R-20161515648-20-F001-1025 20250716_005851.xml', '2025-07-15 19:57:45', '2025-07-15 19:58:51', NULL),
(1026, 'F001', NULL, NULL, 1, 4, 2, 'S/.', 8474.57627, 10000, 0, 0, 0, '[{\"id\":1025,\"n_operacion\":\"F001-20\",\"subtotal\":4237.28814,\"total\":5000,\"igv\":762.71186}]', NULL, 4237.29, 1525.42373, 762.71, 1, 1, 3, 0, 5000, 0, NULL, NULL, NULL, '2025-07-15 19:58:00', '2025-07-15 20:05:28', NULL),
(1027, 'F001', 21, 'F001-21', 1, 4, 2, 'S/.', 508.47458, 600, 0, 0, 0, NULL, NULL, NULL, 91.52542, 0, 1, 1, 3, 0, 600, 0, NULL, '/storage/cdrs/6879ab897e3e7.zip', '/storage/xml/R-20161515648-21-F001-1027 20250718_020353.xml', '2025-07-17 21:03:45', '2025-07-17 21:03:53', NULL),
(1028, 'F001', 22, 'F001-22', 1, 4, 2, 'S/.', 535.59322, 632, 0, 100, 0, NULL, NULL, NULL, 96.40678, 0, 1, 1, 3, 0, 632, 0, NULL, '/storage/cdrs/6879ad1274b26.zip', '/storage/xml/R-20161515648-22-F001-1028 20250718_021026.xml', '2025-07-17 21:10:22', '2025-07-17 21:10:26', NULL),
(1029, 'F001', 23, 'F001-23', 1, 4, 2, 'S/.', 1695.59322, 2000.8, 0, 0, 0, NULL, NULL, NULL, 305.20678, 0, 1, 1, 3, 0, 2000.8, 0, NULL, '/storage/cdrs/6879b0b44d9a8.zip', '/storage/xml/R-20161515648-23-F001-1029 20250718_022556.xml', '2025-07-17 21:25:52', '2025-07-17 21:25:56', NULL),
(1030, 'F001', 24, 'F001-24', 1, 4, 2, 'S/.', 2796.61017, 3300, 0, 0, 0, NULL, NULL, NULL, 503.38983, 0, 1, 1, 3, 0, 3300, 0, 'dasdasdsa', '/storage/cdrs/6879b10e46c70.zip', '/storage/xml/R-20161515648-24-F001-1030 20250718_022726.xml', '2025-07-17 21:27:22', '2025-07-17 21:27:26', NULL);

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
(1, 1000, 1, 1, 10, 0, 0, 0, 0, 'NIU', 2, 508.474576, 600, 0, 1016.949152, 183.05084736, NULL, '2025-07-01 20:32:43', '2025-07-01 20:32:43', NULL),
(2, 1001, 3, 1, 11, 0, 0, 0, 0, 'NIU', 1, 551.525424, 650.8, 0, 551.525424, 99.27457632, NULL, '2025-07-01 20:35:26', '2025-07-01 20:35:26', NULL),
(3, 1001, 2, 1, 10, 0, 0, 0, 0, 'NIU', 2, 635.59322, 750, 0, 1271.18644, 228.8135592, NULL, '2025-07-01 20:35:26', '2025-07-01 20:35:26', NULL),
(4, 1002, 5, 2, 17, 0, 0, 0, 0, 'KGM', 2, 211.864407, 220.33898, 0, 423.728814, 16.94915256, NULL, '2025-07-01 20:40:26', '2025-07-01 20:40:26', NULL),
(5, 1003, 5, 2, 17, 0, 0, 0, 0, 'KGM', 2, 211.864407, 220.33898, 0, 423.728814, 16.94915256, NULL, '2025-07-01 20:40:26', '2025-07-01 20:40:26', NULL),
(6, 1004, 2, 1, 30, 0, 0, 0, 0, 'NIU', 2, 677.966102, 677.9661, 0, 1355.932204, 0, NULL, '2025-07-01 20:43:45', '2025-07-01 20:43:45', NULL),
(7, 1005, 3, 1, 10, 0, 0, 0, 0, 'NIU', 1, 551.525424, 650.8, 0, 551.525424, 99.27457632, NULL, '2025-07-01 20:47:31', '2025-07-01 20:47:31', NULL),
(8, 1006, 6, 2, 10, 0.5, 1.5, 0, 0, 'BG', 3, 0.05, 0.059, 0, 0.15, 0.027, NULL, '2025-07-01 21:27:27', '2025-07-01 21:27:27', NULL),
(9, 1006, 5, 2, 17, 0, 0, 0, 0, 'KGM', 1, 296.610169, 308.47458, 0, 296.610169, 11.86440676, NULL, '2025-07-01 21:27:27', '2025-07-01 21:27:27', NULL),
(10, 1005, 2, 1, 10, 0, 0, 0, 0, 'NIU', 2, 635.59322, 750, 0, 1271.18644, 228.8135592, NULL, '2025-07-03 20:38:24', '2025-07-04 02:03:30', '2025-07-04 02:03:30'),
(11, 1006, 4, 3, 10, 0, 0, 17, 132.98565826, 'BO', 2, 391.134289, 540, 0, 782.268578, 164.7457625268, NULL, '2025-07-03 21:29:27', '2025-07-03 21:29:27', NULL),
(12, 1007, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-08 22:28:57', '2025-07-08 22:28:57', NULL),
(13, 1008, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-10 19:44:36', '2025-07-10 19:44:36', NULL),
(14, 1009, 3, 1, 10, 0, 0, 0, 0, 'NIU', 1, 551.525424, 650.8, 0, 551.525424, 99.27457632, NULL, '2025-07-10 19:58:05', '2025-07-10 19:58:05', NULL),
(15, 1010, 1, 1, 10, 0, 0, 0, 0, 'NIU', 1, 508.474576, 600, 0, 508.474576, 91.52542368, NULL, '2025-07-10 20:08:09', '2025-07-10 20:08:09', NULL),
(16, 1011, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 750, 0, 635.59322, 114.4067796, NULL, '2025-07-10 20:13:55', '2025-07-10 20:13:55', NULL),
(17, 1012, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 750, 0, 635.59322, 114.4067796, NULL, '2025-07-10 20:14:50', '2025-07-10 20:14:50', NULL),
(18, 1013, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 750, 0, 635.59322, 114.4067796, NULL, '2025-07-10 20:16:05', '2025-07-10 20:16:05', NULL),
(19, 1014, 4, 3, 10, 0, 0, 17, 66.49282913, 'BO', 1, 391.134289, 540, 0, 391.134289, 82.3728812634, NULL, '2025-07-10 20:29:02', '2025-07-10 20:29:02', NULL),
(20, 1015, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-10 20:30:48', '2025-07-10 20:30:48', NULL),
(21, 1016, 3, 1, 40, 0, 0, 0, 0, 'NIU', 1, 297.033898, 297.0339, 0, 297.033898, 0, NULL, '2025-07-10 20:35:44', '2025-07-10 20:35:44', NULL),
(22, 1017, 7, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 4237.288136, 5000, 0, 4237.288136, 762.71186448, NULL, '2025-07-10 20:45:37', '2025-07-10 20:45:37', NULL),
(23, 1018, 8, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 2966.101695, 3500, 0, 2966.101695, 533.8983051, NULL, '2025-07-10 20:47:00', '2025-07-10 20:47:00', NULL),
(24, 1019, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-10 21:42:50', '2025-07-10 21:42:50', NULL),
(25, 1020, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-10 21:51:03', '2025-07-10 21:51:03', NULL),
(26, 1021, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-10 22:22:24', '2025-07-10 22:22:24', NULL),
(27, 1022, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-10 22:48:18', '2025-07-10 22:48:18', NULL),
(28, 1023, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-10 22:55:54', '2025-07-10 22:55:54', NULL),
(29, 1024, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-11 08:51:10', '2025-07-11 08:51:10', NULL),
(30, 1025, 7, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 4237.288136, 5000, 0, 4237.288136, 762.71186448, NULL, '2025-07-15 19:57:45', '2025-07-15 19:57:45', NULL),
(31, 1026, 9, 1, 10, 0, 0, 0, 0, 'ZZ', 1, 8474.576271, 10000, 0, 8474.576271, 1525.42372878, NULL, '2025-07-15 19:58:00', '2025-07-15 19:58:00', NULL),
(32, 1027, 1, 1, 10, 0, 0, 0, 0, 'NIU', 1, 508.474576, 600, 0, 508.474576, 91.52542368, NULL, '2025-07-17 21:03:45', '2025-07-17 21:03:45', NULL),
(33, 1028, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 632, 100, 535.59322, 96.4067796, NULL, '2025-07-17 21:10:22', '2025-07-17 21:10:22', NULL),
(34, 1029, 3, 1, 10, 0, 0, 0, 0, 'NIU', 1, 551.525424, 650.8, 0, 551.525424, 99.27457632, NULL, '2025-07-17 21:25:52', '2025-07-17 21:25:52', NULL),
(35, 1029, 2, 1, 10, 0, 0, 0, 0, 'NIU', 1, 635.59322, 750, 0, 635.59322, 114.4067796, NULL, '2025-07-17 21:25:52', '2025-07-17 21:25:52', NULL),
(36, 1029, 1, 1, 10, 0, 0, 0, 0, 'NIU', 1, 508.474576, 600, 0, 508.474576, 91.52542368, NULL, '2025-07-17 21:25:52', '2025-07-17 21:25:52', NULL),
(37, 1030, 2, 1, 10, 0, 0, 0, 0, 'NIU', 2, 635.59322, 750, 0, 1271.18644, 228.8135592, NULL, '2025-07-17 21:27:22', '2025-07-17 21:27:22', NULL),
(38, 1030, 1, 1, 10, 0, 0, 0, 0, 'NIU', 3, 508.474576, 600, 0, 1525.423728, 274.57627104, NULL, '2025-07-17 21:27:22', '2025-07-17 21:27:22', NULL);

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
(1, 1000, 'EFECTIVO', 1200, NULL, '2025-07-01 20:32:43', '2025-07-01 20:32:43', NULL),
(2, 1001, 'EFECTIVO', 1440, NULL, '2025-07-01 20:35:26', '2025-07-01 20:35:26', NULL),
(3, 1002, 'EFECTIVO', 340.67796, NULL, '2025-07-01 20:40:26', '2025-07-01 20:40:26', NULL),
(4, 1003, 'EFECTIVO', 340.67796, NULL, '2025-07-01 20:40:26', '2025-07-01 20:40:26', NULL),
(5, 1004, 'EFECTIVO', 1355.9322, NULL, '2025-07-01 20:43:45', '2025-07-01 20:43:45', NULL),
(11, 1005, 'TRANSFERENCIA', 624.768, NULL, '2025-07-03 21:28:42', '2025-07-03 21:28:42', NULL),
(12, 1006, 'EFECTIVO', 1390.15158, NULL, '2025-07-03 21:30:28', '2025-07-03 21:30:28', NULL),
(13, 1007, 'TRANSFERENCIA', 632, NULL, '2025-07-08 22:28:57', '2025-07-08 22:28:57', NULL),
(14, 1008, 'EFECTIVO', 632, NULL, '2025-07-10 19:44:36', '2025-07-10 19:44:36', NULL),
(15, 1009, 'EFECTIVO', 631.276, NULL, '2025-07-10 19:58:05', '2025-07-10 19:58:05', NULL),
(16, 1010, 'EFECTIVO', 576, NULL, '2025-07-10 20:08:09', '2025-07-10 20:08:09', NULL),
(17, 1011, 'EFECTIVO', 775.42373, NULL, '2025-07-10 20:13:55', '2025-07-10 20:13:55', NULL),
(18, 1012, 'EFECTIVO', 775.42373, NULL, '2025-07-10 20:14:50', '2025-07-10 20:14:50', NULL),
(19, 1013, 'EFECTIVO', 775.42373, NULL, '2025-07-10 20:16:05', '2025-07-10 20:16:05', NULL),
(20, 1014, 'EFECTIVO', 540, NULL, '2025-07-10 20:29:02', '2025-07-10 20:29:02', NULL),
(21, 1015, 'EFECTIVO', 606.72, NULL, '2025-07-10 20:30:48', '2025-07-10 20:30:48', NULL),
(22, 1016, 'EFECTIVO', 297.0339, NULL, '2025-07-10 20:35:44', '2025-07-10 20:35:44', NULL),
(23, 1017, 'EFECTIVO', 5000, NULL, '2025-07-10 20:45:37', '2025-07-10 20:45:37', NULL),
(24, 1018, 'EFECTIVO', 3500, NULL, '2025-07-10 20:47:00', '2025-07-10 20:47:00', NULL),
(25, 1019, 'EFECTIVO', 2796.61, NULL, '2025-07-10 21:42:50', '2025-07-10 21:42:50', NULL),
(26, 1020, 'EFECTIVO', 1500, NULL, '2025-07-10 21:51:03', '2025-07-10 21:51:03', NULL),
(27, 1021, 'EFECTIVO', 1500, NULL, '2025-07-10 22:22:24', '2025-07-10 22:22:24', NULL),
(28, 1022, 'EFECTIVO', 1500, NULL, '2025-07-10 22:48:18', '2025-07-10 22:48:18', NULL),
(29, 1023, 'EFECTIVO', 1500, NULL, '2025-07-10 22:55:54', '2025-07-10 22:55:54', NULL),
(30, 1024, 'TRANSFERENCIA', 5000, NULL, '2025-07-11 08:51:10', '2025-07-11 08:51:10', NULL),
(31, 1025, 'EFECTIVO', 5000, NULL, '2025-07-15 19:57:45', '2025-07-15 19:57:45', NULL),
(33, 1026, 'EFECTIVO', 5000, NULL, '2025-07-15 20:05:25', '2025-07-15 20:05:25', NULL),
(34, 1027, 'EFECTIVO', 600, NULL, '2025-07-17 21:03:45', '2025-07-17 21:03:45', NULL),
(35, 1028, 'EFECTIVO', 632, NULL, '2025-07-17 21:10:22', '2025-07-17 21:10:22', NULL),
(36, 1029, 'EFECTIVO', 2000.8, NULL, '2025-07-17 21:25:52', '2025-07-17 21:25:52', NULL),
(37, 1030, 'EFECTIVO', 3300, NULL, '2025-07-17 21:27:22', '2025-07-17 21:27:22', NULL);

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
(1, 'Jose', 'laravest@gmail.com', 'Jaico', 'users/heOk1eNwbgKxkdPzAS39f2tiBBfzxC1QEPUkXeF9.png', 1, '678687678', 'DNI', '71471741', 'M', 1, '2025-06-06 05:53:54', '$2y$12$mSBuXSMD86nmjU5DdyxzB.l7yeTXs/L6dIUh0iNX1RTwd1E9NgBHG', 'vuLapXd0o7', '2025-06-06 05:53:55', '2025-06-13 06:22:29', NULL),
(2, 'Juan Jose', 'juandiaz@gmail.com', 'Diaz', 'users/K7TWhqcBXwx2lYhckONwYDEW3kw2JVGJYn27uZRb.png', 4, '99999999', 'DNI', '74859625', 'M', 1, NULL, '$2y$12$1J6AhyDNMOFUzBwjBZ9lW.gP89vm/94gaoJOZCA7/qqfBceAxNZx2', NULL, '2025-06-11 08:14:49', '2025-06-11 08:39:43', NULL),
(3, 'Gladis Melisa', 'gladis@gmail.com', 'Soto', 'users/m3OM9pOJ8b9cNkjhktKdXSQQWTMNpVRRIHVuSYcR.png', 3, '987787574', 'DNI', '7458263', 'F', 1, NULL, '$2y$12$oHlYi5Sa3RTcCQOy2gq3AuvpE9T6L1qY0SqOExp7pwGjJol5Fnvny', NULL, '2025-06-11 08:19:08', '2025-06-11 08:39:59', NULL),
(4, 'Lucho', 'lucho@gmail.com', 'Bermudez', 'users/WavobBvYgUw8y7yG4VrC6QMIRVGKfK6ckQuz9bSa.png', 4, '9948484', 'DNI', '74526632', 'M', 1, NULL, '$2y$12$8oom3UzXgBNp1QgOiwrSf.l6CFXyGxugk/jdGC49czkmXyW2Znzci', NULL, '2025-06-13 05:28:52', '2025-06-13 05:28:52', NULL),
(5, 'Camila 1235', 'camila@gmail.com', 'Rodriguez', 'users/4cwMYMmx7b2lHTc6rU222XKiIbdhq3IXGMWMjqhI.png', 2, '99444444', 'DNI', '74526358', 'F', 1, NULL, '$2y$12$L4lFnjWGFqdzdrsA2OY4x.IkvU5Mb0I.7DiFcW5hcg2JhTcM.gWQm', NULL, '2025-06-13 05:30:02', '2025-06-20 06:02:03', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
