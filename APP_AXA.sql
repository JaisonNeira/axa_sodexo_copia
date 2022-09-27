-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-09-2022 a las 21:08:51
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
-- Base de datos: `APP_AXA`
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
  `cal_calificacion` double(10,2) DEFAULT '0.00',
  `cal_puntaje` varchar(5) NOT NULL DEFAULT '0/16',
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
(12, '12345-44433309272022015123', '12345', 65, 3.98, '1/16', NULL, NULL, 1, '2022-09-27 08:51:23', '2022-09-27 08:54:49');

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
(65, 444333, 'TEARTTRE', 'AXA543', NULL, 'Funcionario', NULL, '2022-09-27 08:51:23', '2022-09-27 08:51:23', 1);

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
(1, 'Seleccione los principales elementos de comunicación de peligro relacionados con la manipulación de sustancias químicas.', 'El objetivo de la comunicación del peligro químico es evitar los efectos adversos a la salud o al medio ambiente promoviendo la manipulación responsable de los productos químicos para prevenir accidentes o situaciones de riesgo, por ello es necesario comprender que existen una sería de recursos creados para identificar de manera temprana la información que ofrecen algunas sustancias, por ejemplo una etiqueta y/o ficha de datos de seguridad.', '2022-09-27 03:28:28', NULL),
(2, 'Determine los medios de consulta del peligro de una sustancia química para realizar el etiquetado antes de manipularla', 'La responsabilidad inicial de la información de peligro que nos aporta una sustancia química debe ser elaborada de primera mano por el fabricante, importador o distribuidor del producto; por lo cual, habitualmente se debe solicitar la Ficha de Datos de Seguridad de la sustancia química directamente al proveedor implicado en la transacción comercial.', '2022-09-27 03:28:28', NULL),
(3, 'Seleccione el grupo de secciones que corresponde a la atención de emergencias: partiendo de la base que la información de las Fichas de Datos de Seguridad - FDS se pueden dividir en 4 grandes grupos.', 'Para el mejor entendimiento de las Fichas de Datos de Seguridad - FDS de las sustancias químicas, es interesante entender que, los 16 ítem contenidos en este documento se pueden agrupar en solo cuatro grandes secciones y así será más fácil la búsqueda de la información requerida.', '2022-09-27 03:28:28', NULL),
(4, 'Revise las Fichas de Datos de Seguridad disponibles asociadas a la sustancia en cuestión, seleccione una de ellas y tome de decisión de etiquetar o NO el producto a partir de la información consultada.', 'Independientemente de las habilidades bilingües de un trabajador, durante la manipulación de una sustancia química, cualquier producto potencialmente peligroso debe tener consigo una Ficha de Datos de Seguridad en el idioma nativo del país donde se comercializa;  para el caso de Colombia debe ser castellano.', '2022-09-27 03:28:28', NULL),
(5, 'Identifique la secuencia lógica de actuación ante emergencias, como consecuencia del vertimiento accidental (derrame) que se está presentando.', 'Los vertimientos accidentales “derrames” que se presentan en áreas de almacenamiento a granel, deben estar contemplados en un plan de acción del incidente plenamente definido de acuerdo a los peligros de la sustancia involucrada; siempre siguiendo la información básica que le permitirá actuar de acuerdo a la situación.', '2022-09-27 03:28:28', NULL),
(6, 'Seleccione cuál de las Fichas de Datos de Seguridad desea dejar dentro de la carpeta de sustancias químicas.', 'Para garantizar la gestión apropiada de las sustancias y materiales peligrosos, las Fichas de Datos de Seguridad deben estar actualizadas como mínimo cada 5 años, ya que cualquier sustancia es susceptible de presentar notas aclaratorias de peligro o alerta mundial que deben mantenerse vigentes para la manipulación de dicho producto.', '2022-09-27 03:28:28', NULL),
(7, 'Seleccione el pictograma de peligro más apropiado del producto químico de acuerdo a la Resolución 0773 de 2021.', 'Como una medida para contrarrestar el “multi etiquetado” de las sustancias químicas que se comercializan a nivel internacional y que llegan a diferentes países, la Organización de Naciones Unidas (ONU) homologó y estandarizó a nivel mundial el Sistema Globalmente Armonizado de etiquetado y que fue asumido en Colombia para su cumplimiento por parte de los intervinientes en la producción, distribución y manipulación.', '2022-09-27 03:28:28', NULL),
(8, 'Seleccione cuáles ítems son relevantes para etiquetar una sustancia química', 'Todo producto químico potencialmente peligroso debe poseer una etiqueta que permita identificar de manera temprana los peligros a los cuales se enfrenta el operario del proceso que va a manipular la sustancia.', '2022-09-27 03:28:28', NULL),
(9, 'Identifique la condición de peligro a la salud de la sustancia en cuestión, a partir de la información de la FDS.', '\"Es necesario aprender a interpretar a que clase de peligro se refieren los diferentes pictogramas que nos aporta el Sistema Globalmente Armonizado.\r\nPor esta razón es importante consultar tanto la Etiqueta como la Ficha de Datos de Seguridad de las sustancias.\"', '2022-09-27 03:28:28', NULL),
(10, 'Tome una decisión asertiva en relación al uso y manipulación de la dilución creada.', 'En algunos procesos industriales es necesario emplear mezclas y diluciones de sustancias potencialmente peligrosas, ante lo cual, un buen Programa para la Gestión de Sustancias Químicas debe garantizar la existencia tanto de FDS como de etiquetado segun SGA para cada nueva sustancia creada que como MÍNIMO deberá indicar \"sigla de precaución\" en aquellas diluciones que podemos tener la percepción que son de bajo riesgo.', '2022-09-27 03:28:28', NULL),
(11, '\"Etiquete el envase o recipiente del \"\"Catalizador para Pintura\"\".\r\n(partiendo de la base que tiene un volumen de 35 ml)\".', 'El sistema de etiquetado debe ser tan dinámico que permita cumplir con los requerimientos de la normativa vigente y comunicar el peligro que ofrece la operación o manipulación de una sustancia química independientemente de su tamaño.', '2022-09-27 03:28:28', NULL),
(12, 'Realice el trasvase y etiquetado a partir de la información original.', 'La responsabilidad en el etiquetado de los productos trasvasados recae sobre la empresa que está haciendo la segregación en recipientes de menor volumen y debe cumplir con las características del etiquetado del envase original el cual a su vez será coherente con la información del Sistema Globalmente Armonizado.', '2022-09-27 03:28:28', NULL),
(13, 'Analice la situación y tome la o las decisiones correspondientes.', 'Los programas de señalización y demarcación de áreas aportan a la seguridad y salud de los funcionarios de una operación, empleando mecanismos de advertencia hacia los peligros potenciales en un área específica.  Es necesario seguir las Indicaciones de lo descrito allí.', '2022-09-27 03:28:28', NULL),
(14, '\"Seleccione la mejor alternativa para el almacenamiento de la sustancia química incorporada, teniendo en cuenta su compatibilidad química.\r\nUso necesario de FDS\".', 'Una de las precauciones durante el almacenamiento de sustancias y materiales peligrosos tiene que ver con la incompatibilidad química, toda vez que algunos productos pueden llegar a reaccionar con otros, derivado de su composición y características físico químicas.', '2022-09-27 03:28:28', NULL),
(15, 'Eligir las acciones secuenciales y coherentes para el control del vertimiento accidental.', 'Las emergencias son desviaciones de la operación normal con sustancias y materiales potencialmente peligrosos, por eso es necesario conocer los protocolos a seguir en caso de presentarse algún tipo de evento amenazante.', '2022-09-27 03:28:28', NULL),
(16, '\"Determine las mejores alternativas para el correcto almacenamiento de la sustancia presentada en la escena.  \r\n(corroborar con FDS)\".', 'Las condiciones propicias para el almacenamiento de un producto potencialmente peligroso, están dadas de acuerdo a las características físico químicas de la sustancia y que se encuentran indicadas en la Ficha de Datos de Seguridad - FDS para ayudar a justificar el mejor sitio con las mejores locaciones para su bodegaje.', '2022-09-27 03:28:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `res_id` int(12) NOT NULL,
  `cal_id` int(12) DEFAULT NULL,
  `res_pregunta` varchar(20) DEFAULT NULL,
  `res_respuesta` double(20,3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `res_estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`res_id`, `cal_id`, `res_pregunta`, `res_respuesta`, `created_at`, `updated_at`, `res_estado`) VALUES
(1, 12, '1', 0.333, '2022-09-27 01:51:36', '2022-09-27 08:51:36', 1),
(2, 12, '2', -3.000, '2022-09-27 01:51:47', '2022-09-27 08:51:47', 1),
(3, 12, '3', 0.750, '2022-09-27 01:51:59', '2022-09-27 08:51:59', 1),
(4, 12, '4', -2.000, '2022-09-27 01:52:15', '2022-09-27 08:52:15', 1),
(5, 12, '5', -0.500, '2022-09-27 01:52:25', '2022-09-27 08:52:25', 1),
(6, 12, '6', 0.500, '2022-09-27 01:52:37', '2022-09-27 08:52:37', 1),
(7, 12, '7', -0.900, '2022-09-27 01:53:09', '2022-09-27 08:53:09', 1),
(8, 12, '8', -0.500, '2022-09-27 01:53:22', '2022-09-27 08:53:22', 1),
(9, 12, '9', 0.400, '2022-09-27 01:53:32', '2022-09-27 08:53:32', 1),
(10, 12, '10', -4.000, '2022-09-27 01:53:49', '2022-09-27 08:53:49', 1),
(11, 12, '11', -2.000, '2022-09-27 01:53:56', '2022-09-27 08:53:56', 1),
(12, 12, '12', 0.664, '2022-09-27 01:54:06', '2022-09-27 08:54:06', 1),
(13, 12, '13', 0.330, '2022-09-27 01:54:18', '2022-09-27 08:54:18', 1),
(14, 12, '14', 0.000, '2022-09-27 01:54:28', '2022-09-27 08:54:28', 1),
(15, 12, '15', -2.000, '2022-09-27 01:54:36', '2022-09-27 08:54:36', 1),
(16, 12, '16', 1.000, '2022-09-27 01:54:49', '2022-09-27 08:54:49', 1);

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
  MODIFY `cal_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cur_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `emp_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `pre_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `res_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
