-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-09-2022 a las 21:09:08
-- Versión del servidor: 5.7.38-cll-lve
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `APP_SODEXO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `cal_id` int(20) NOT NULL,
  `cal_codigo` text NOT NULL,
  `codigo_vr` text NOT NULL,
  `emp_id` int(20) NOT NULL,
  `cal_calificacion` double(10,0) DEFAULT NULL,
  `cal_puntaje` varchar(5) NOT NULL DEFAULT '0/9',
  `cur_id` int(20) DEFAULT NULL,
  `enc_id` int(20) DEFAULT NULL,
  `cal_estado` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`cal_id`, `cal_codigo`, `codigo_vr`, `emp_id`, `cal_calificacion`, `cal_puntaje`, `cur_id`, `enc_id`, `cal_estado`, `created_at`, `updated_at`) VALUES
(13, 'Oculus_001-124124109172022092926', 'Oculus_001', 40, 44, '4/9', NULL, NULL, 1, '2022-09-18 04:29:26', '2022-09-18 04:31:28'),
(14, 'Oculus_002-1124109172022093318', 'Oculus_002', 41, 67, '6/9', NULL, NULL, 1, '2022-09-18 04:33:18', '2022-09-18 04:34:46'),
(15, '#1WMHHA63FB2012-67890009182022065851', '#1WMHHA63FB2012', 42, 56, '5/9', NULL, NULL, 1, '2022-09-19 01:58:51', '2022-09-19 02:09:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `cur_id` int(20) NOT NULL COMMENT 'llave primaria',
  `cur_nombre` varchar(25) NOT NULL COMMENT 'nombre del curso',
  `cur_estado` int(5) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`cur_id`, `cur_nombre`, `cur_estado`, `created_at`, `updated_at`) VALUES
(1, 'ADSI58', 1, '2022-08-20 21:19:21', '2022-08-21 02:19:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `emp_id` int(12) NOT NULL,
  `emp_cedula` int(20) NOT NULL,
  `emp_nombre` varchar(20) NOT NULL,
  `emp_apellidos` varchar(25) DEFAULT NULL,
  `empr_id` int(20) DEFAULT NULL,
  `emp_cargo` varchar(20) DEFAULT NULL,
  `sed_id` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`emp_id`, `emp_cedula`, `emp_nombre`, `emp_apellidos`, `empr_id`, `emp_cargo`, `sed_id`, `created_at`, `updated_at`, `emp_estado`) VALUES
(3, 11231231, 'Jaison', 'Neira', 1, 'Tecnologo', 2, '2022-09-12 16:11:41', NULL, 1),
(28, 72310355, 'William', 'Pallarez', 1, 'Ingeniero', 2, '2022-08-31 19:52:20', '2022-09-01 02:52:20', 1),
(40, 1241241, 'Jaison', 'Neira', NULL, 'Norte', NULL, '2022-09-18 04:29:26', '2022-09-18 04:29:26', 1),
(41, 11241, 'Alfonso', 'Samper', NULL, 'Sur', NULL, '2022-09-18 04:33:18', '2022-09-18 04:33:18', 1),
(42, 678900, 'LUIS', 'GON', NULL, 'PRUE', NULL, '2022-09-19 01:58:51', '2022-09-19 01:58:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `empr_id` int(20) NOT NULL,
  `empr_nit` int(20) NOT NULL,
  `empr_nombre` varchar(25) NOT NULL,
  `empr_estado` int(5) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`empr_id`, `empr_nit`, `empr_nombre`, `empr_estado`, `created_at`, `updated_at`) VALUES
(1, 53423, 'Coca cola', 1, '2022-08-20 20:00:38', '2022-08-21 01:00:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
--

CREATE TABLE `encargados` (
  `enc_id` int(20) NOT NULL,
  `enc_cedula` int(20) NOT NULL,
  `enc_nombre` varchar(25) NOT NULL,
  `enc_estado` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encargados`
--

INSERT INTO `encargados` (`enc_id`, `enc_cedula`, `enc_nombre`, `enc_estado`, `created_at`, `updated_at`) VALUES
(1, 524234, 'jesus', 1, '2022-09-15 23:24:07', '2022-09-16 06:22:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(5, '2022_08_20_153638_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'sidebar_encargado', 'web', '2022-08-20 22:14:26', '2022-08-20 22:14:26'),
(2, 'sidebar_admin', 'web', '2022-08-20 22:24:11', '2022-08-20 22:24:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `pre_id` int(20) NOT NULL,
  `pre_nombre` text NOT NULL,
  `pre_consejo` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`pre_id`, `pre_nombre`, `pre_consejo`, `created_at`, `updated_at`) VALUES
(1, '¿Qué debo hacer antes de empezar la tarea de limpieza?', 'El proceso de alistamiento del carro de limpieza con  los implementos y productos necesarios para la ejecución de las actividades aseguran la calidad y cumplimiento de   los procedimientos como tiempos, rutinas y estándares establecidos por  la compañía.', '2022-09-17 18:02:42', NULL),
(2, '¿Cómo debe ser la graduación del atomizador?', 'La calibración del atomizador en forma de abanico, asegura la cantidad correcta del producto limpiador a utilizar, recordar que al paño se aplican 2 push, a la mopa húmeda o trapero 3 push, al sanitario, orinal y lavamanos 6 push.', '2022-09-17 18:02:42', NULL),
(3, '¿Cuál de estos tres procedimientos ejecuto para realizar el proceso de limpieza de pisos?', 'El proceso para limpieza de pisos debe se debe ejecutar de acuerdo al estandar de iniciar con mopeado en seco y continuar con el mopeado en húmedo, realizando movimientos en forma de zig-zag sin pasar dos veces por el mismo sitio, cada vez que sea necesario repetir la operación se debe lavar muy bien la mopa. ', '2022-09-17 18:02:42', NULL),
(4, 'Para la limpieza y desinfección de un baño ¿Cuáles son los elementos de protección personal que se requieren para la ejecución de la tarea?', 'En Sodexo lo más importante es la seguridad de los Colaboradores, por lo tanto, siempre se deben ejecutar las tareas de limpieza utilizando los elementos de protección personal necesarios para cada una de ellas,  y así se prevenir posible contacto con agua o materiales contaminados.', '2022-09-17 18:02:42', NULL),
(5, '¿Cuál  de estos procedimientos es el correcto para la limpieza de paredes en un cubículo hospitalario?', 'Para iniciar la limpieza en un cubículo hospitalario se debe tener en cuenta el principio de limpieza inductiva de arriba hacia abajo, así se asegura que no se genere contaminación cruzada.', '2022-09-17 18:02:42', NULL),
(6, '¿Cómo realizo el procedimiento de limpieza en una puerta ?', 'En el área de recepción es importante realizar una correcta limpieza y desinfección en la puerta, por ser una superficie  que se ensucia con mucha facilidad, y de acuerdo a la rutina establecida.\r\n', '2022-09-17 18:02:42', NULL),
(7, '¿Cuál es el procedimiento correcto para la limpieza de una caneca/papelera?', 'La bolsa debe quedar bien colocada en la caneca sin que queden sobrantes de la misma a la vista. ', '2022-09-17 18:02:42', NULL),
(8, 'Al finalizar la labor de limpieza,  ¿Cómo debo realizar el cierre de la actividad?', 'Al  dejar los implementos limpios y organizados en el sitio indicado; aseguro buena presentación del sitio, la vida útil de los mismos, que estén listos para la próxima actividad y que no ocurran posibles accidentes. ', '2022-09-17 18:02:42', NULL),
(9, '¿Cuál es el procedimiento correcto para iniciar la limpieza y desinfección de un baño?', 'Al iniciar la actividad; es importante aplicar el producto desinfectante  en los lavamanos y después de descargar los sanitarios y orinales, porque asegura que la acción limpiadora y de eliminación de microorganismos se lleve a cabo en el tiempo de contacto necesario mientras se realiza la limpieza de otras superficies. ', '2022-09-17 18:02:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `res_id` int(12) NOT NULL,
  `cal_id` int(12) DEFAULT NULL,
  `res_pregunta` varchar(20) DEFAULT NULL,
  `res_respuesta` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `res_estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`res_id`, `cal_id`, `res_pregunta`, `res_respuesta`, `created_at`, `updated_at`, `res_estado`) VALUES
(1, 13, '1', 0, '2022-09-18 04:29:53', '2022-09-18 04:29:53', 1),
(2, 13, '2', 1, '2022-09-18 04:30:01', '2022-09-18 04:30:01', 1),
(3, 13, '3', 0, '2022-09-18 04:30:07', '2022-09-18 04:30:07', 1),
(4, 13, '4', 1, '2022-09-18 04:30:31', '2022-09-18 04:30:31', 1),
(5, 13, '5', 0, '2022-09-18 04:30:37', '2022-09-18 04:30:37', 1),
(6, 13, '6', 1, '2022-09-18 04:30:48', '2022-09-18 04:30:48', 1),
(7, 13, '7', 0, '2022-09-18 04:31:13', '2022-09-18 04:31:13', 1),
(8, 13, '8', 0, '2022-09-18 04:31:21', '2022-09-18 04:31:21', 1),
(9, 13, '9', 1, '2022-09-18 04:31:28', '2022-09-18 04:31:28', 1),
(10, 14, '1', 1, '2022-09-18 04:33:44', '2022-09-18 04:33:44', 1),
(11, 14, '2', 1, '2022-09-18 04:33:48', '2022-09-18 04:33:48', 1),
(12, 14, '3', 0, '2022-09-18 04:33:59', '2022-09-18 04:33:59', 1),
(13, 14, '4', 1, '2022-09-18 04:34:04', '2022-09-18 04:34:04', 1),
(14, 14, '5', 1, '2022-09-18 04:34:08', '2022-09-18 04:34:08', 1),
(15, 14, '6', 0, '2022-09-18 04:34:15', '2022-09-18 04:34:15', 1),
(16, 14, '7', 0, '2022-09-18 04:34:28', '2022-09-18 04:34:28', 1),
(17, 14, '8', 1, '2022-09-18 04:34:37', '2022-09-18 04:34:37', 1),
(18, 14, '9', 1, '2022-09-18 04:34:46', '2022-09-18 04:34:46', 1),
(19, 15, '1', 0, '2022-09-19 01:59:45', '2022-09-19 01:59:45', 1),
(20, 15, '2', 1, '2022-09-19 02:00:22', '2022-09-19 02:00:22', 1),
(21, 15, '3', 1, '2022-09-19 02:01:03', '2022-09-19 02:01:03', 1),
(22, 15, '4', 1, '2022-09-19 02:01:33', '2022-09-19 02:01:33', 1),
(23, 15, '5', 0, '2022-09-19 02:01:56', '2022-09-19 02:01:56', 1),
(24, 15, '6', 0, '2022-09-19 02:02:32', '2022-09-19 02:02:32', 1),
(25, 15, '7', 0, '2022-09-19 02:03:32', '2022-09-19 02:03:32', 1),
(26, 15, '8', 1, '2022-09-19 02:03:41', '2022-09-19 02:03:41', 1),
(27, 15, '9', 1, '2022-09-19 02:04:03', '2022-09-19 02:04:03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2022-08-20 22:14:25', '2022-08-20 22:14:25'),
(2, 'Encargado', 'web', '2022-08-20 22:14:26', '2022-08-20 22:14:26');

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
(1, 1),
(2, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `sed_id` int(20) NOT NULL,
  `sed_nombre` varchar(25) NOT NULL,
  `sed_estado` int(5) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`sed_id`, `sed_nombre`, `sed_estado`, `created_at`, `updated_at`) VALUES
(2, 'norte', 1, '2022-08-21 21:58:05', NULL),
(3, 'sura', 0, '2022-09-17 19:45:45', '2022-09-18 00:45:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jaison', 'Admin@gmail.com', NULL, '$2y$10$tLFXo.IzJbbXWfQgWfcE7ONeaLrgN3Y3ggk89W/lonP9ViikkuyJ2', NULL, '2022-08-02 20:36:23', '2022-09-13 00:46:44'),
(5, 'Cesar', 'Cesar@gmail.com', NULL, '$2y$10$LhO.bqlf/wM8xYDJ1lYW6OVnHIMaUk0LXAkvzKMmUPnEGeUUdsmu2', NULL, '2022-09-01 02:49:56', '2022-09-01 02:49:56'),
(6, 'Luis', 'Luis@gmail.com', NULL, '$2y$10$YFknqwjE9KlpQy3r94W2rOLqBQVxgXgJjudioeRukAcBZ/FRSxb3C', NULL, '2022-09-01 02:50:09', '2022-09-01 02:50:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`cal_id`),
  ADD KEY `fk_emp_cal` (`emp_id`),
  ADD KEY `fk_cur_cal` (`cur_id`),
  ADD KEY `fk_enc_cal` (`enc_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`empr_id`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`enc_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`pre_id`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `fk_cal_res` (`cal_id`);

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
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`sed_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `cal_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cur_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `emp_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `empr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `encargados`
--
ALTER TABLE `encargados`
  MODIFY `enc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `pre_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `res_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `sed_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `fk_cur_cal` FOREIGN KEY (`cur_id`) REFERENCES `cursos` (`cur_id`),
  ADD CONSTRAINT `fk_emp_cal` FOREIGN KEY (`emp_id`) REFERENCES `empleados` (`emp_id`),
  ADD CONSTRAINT `fk_enc_cal` FOREIGN KEY (`enc_id`) REFERENCES `encargados` (`enc_id`);

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
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `fk_cal_res` FOREIGN KEY (`cal_id`) REFERENCES `calificaciones` (`cal_id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
