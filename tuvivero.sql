-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2021 a las 17:54:33
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tuvivero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `cedula` int(15) NOT NULL,
  `nombres` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `correo` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `celular` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'viverista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 25),
(2, 1, 26),
(3, 1, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add plantas', 7, 'add_plantas'),
(26, 'Can change plantas', 7, 'change_plantas'),
(27, 'Can delete plantas', 7, 'delete_plantas'),
(28, 'Can view plantas', 7, 'view_plantas'),
(29, 'Can add cliente', 8, 'add_cliente'),
(30, 'Can change cliente', 8, 'change_cliente'),
(31, 'Can delete cliente', 8, 'delete_cliente'),
(32, 'Can view cliente', 8, 'view_cliente'),
(33, 'Can add usuario', 9, 'add_usuario'),
(34, 'Can change usuario', 9, 'change_usuario'),
(35, 'Can delete usuario', 9, 'delete_usuario'),
(36, 'Can view usuario', 9, 'view_usuario'),
(37, 'Can add planta', 10, 'add_planta'),
(38, 'Can change planta', 10, 'change_planta'),
(39, 'Can delete planta', 10, 'delete_planta'),
(40, 'Can view planta', 10, 'view_planta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$rQN5kcR6bzC63Sw1RM0cqW$mT6LOfOtbSGUm3w7jrduJ3pUUynm3XaTByicFfGyiqU=', '2021-10-08 15:27:04.926045', 1, 'adminvivero', 'Leonardo', 'Berdella', 'lberdella@gmail.com', 1, 1, '2021-10-06 16:45:09.000000'),
(2, 'pbkdf2_sha256$260000$iAzRKbDvXauHmbF4IrFpDP$7BMzO62WuGhSz/bVDtFDPNd51KCVqt7mOwO4sEYmX+0=', '2021-10-08 13:59:31.303390', 0, 'alejoberdella', 'Alejandro', 'Berdella', 'alejoberdella@gmail.com', 0, 1, '2021-10-06 23:32:08.000000'),
(4, 'pbkdf2_sha256$260000$QjMtTELnekaGRBwVQjWEI9$5/qPg7Xn4Jlw0d72UHdjDggTGpCpZ3d2o4wd3ZkUmAo=', '2021-10-07 14:24:34.633207', 0, 'aalmanza', 'Anny', 'Almanza', 'annyalmanza@gmail.com', 0, 1, '2021-10-07 14:18:32.640214'),
(11, 'pbkdf2_sha256$260000$mYKMzmzywQYFks2o2OkPtt$yjbi7EhZHs4U4O0hN+4qcm0RNVaDg23Mkq/MraQ6jwI=', '2021-10-07 15:41:14.000000', 0, 'ferberdella', 'Fernanda', 'Berdella', 'ferberdella@gmail.com', 0, 1, '2021-10-07 15:27:23.000000'),
(12, 'pbkdf2_sha256$260000$kfRusONG0yd5YM1lnjdmds$+oj1HxPLknIZWe5MYSnQNxjvzdLXMp5b7zwqoPHiMMs=', '2021-10-08 13:18:21.660754', 0, 'lunarberdella', 'Lunar', 'Berdella', 'lberdella@gmail.com', 0, 1, '2021-10-08 13:18:20.117096'),
(13, 'pbkdf2_sha256$260000$8tLffbPS9mWqAJ4OJ1joPW$lLZDPZcz/RoCoh/IBuqerVvrMAbLjjc6Ii1PbR6p3eQ=', '2021-10-08 13:22:49.370390', 0, 'luisluna', 'luis', 'luna', 'lberdella@gmail.com', 0, 1, '2021-10-08 13:21:45.664133');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cedula` int(15) NOT NULL,
  `user` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `nombres` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `correo` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `nro_celular` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cedula`, `user`, `nombres`, `apellidos`, `correo`, `nro_celular`, `fechareg`) VALUES
(78029291, '', 'Leonardo', 'Berdella', 'lberdella@gmail.com', '3106211691', '2021-10-07 15:35:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id_venta` int(11) NOT NULL,
  `id_planta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-06 16:51:31.742598', '1', 'Veranera', 1, '[{"added": {}}]', 7, 1),
(2, '2021-10-06 23:32:09.171129', '2', 'alejoberdella', 1, '[{"added": {}}]', 4, 1),
(3, '2021-10-06 23:32:48.734713', '2', 'alejoberdella', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 4, 1),
(4, '2021-10-06 23:33:02.778372', '1', 'adminvivero', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1),
(5, '2021-10-07 14:48:49.307521', '3', 'ferberdella', 3, '', 4, 1),
(6, '2021-10-07 15:27:24.506487', '11', 'ferberdella', 1, '[{"added": {}}]', 4, 1),
(7, '2021-10-07 15:47:12.899480', '123', ' ', 3, '', 8, 1),
(8, '2021-10-07 16:50:34.993577', '0', 'Veranera', 1, '[{"added": {}}]', 10, 1),
(9, '2021-10-07 18:46:28.148421', '1', 'Bonche', 2, '[{"changed": {"fields": ["Imagen"]}}]', 10, 1),
(10, '2021-10-07 18:47:28.694996', '2', 'Veranera', 2, '[{"changed": {"fields": ["Imagen"]}}]', 10, 1),
(11, '2021-10-07 18:55:56.383582', '2', 'Veranera', 2, '[{"changed": {"fields": ["Imagen"]}}]', 10, 1),
(12, '2021-10-07 18:57:01.692896', '1', 'Bonche', 2, '[{"changed": {"fields": ["Imagen"]}}]', 10, 1),
(13, '2021-10-07 19:45:42.927479', '3', 'Veranera', 1, '[{"added": {}}]', 10, 1),
(14, '2021-10-08 12:48:15.982405', '3', 'Veranera', 2, '[{"changed": {"fields": ["Imagen"]}}]', 10, 1),
(15, '2021-10-08 15:32:07.770176', '11', 'ferberdella', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 4, 1),
(16, '2021-10-08 15:35:15.446848', '1', 'viverista', 1, '[{"added": {}}]', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'principal', 'planta'),
(7, 'principal', 'plantas'),
(6, 'sessions', 'session'),
(8, 'usuarios', 'cliente'),
(9, 'usuarios', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-05 14:25:54.316097'),
(2, 'auth', '0001_initial', '2021-10-05 14:26:06.391637'),
(3, 'admin', '0001_initial', '2021-10-05 14:26:10.529767'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-05 14:26:10.576657'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-05 14:26:10.639153'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-05 14:26:12.857721'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-05 14:26:14.529533'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-05 14:26:15.638804'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-05 14:26:15.685675'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-05 14:26:16.751113'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-05 14:26:16.797957'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-05 14:26:16.860451'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-05 14:26:17.885238'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-05 14:26:19.088342'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-05 14:26:21.536300'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-05 14:26:21.583170'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-05 14:26:22.676808'),
(18, 'sessions', '0001_initial', '2021-10-05 14:26:24.004845'),
(19, 'principal', '0001_initial', '2021-10-06 16:08:22.345824'),
(20, 'usuarios', '0001_initial', '2021-10-06 22:07:48.537130'),
(21, 'usuarios', '0002_auto_20211006_1818', '2021-10-06 23:18:16.788378'),
(22, 'usuarios', '0003_auto_20211007_0947', '2021-10-07 14:47:58.638111'),
(23, 'principal', '0002_auto_20211007_1051', '2021-10-07 15:51:26.718083');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ekra08lu6xxozficf5xd229dpgwfrmk', '.eJxVjDsOwjAQBe_iGlnxL7Ep6TmDtd5d4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIslDj9bgnwwXUHdId6axJbXZc5yV2RB-3y2oifl8P9OyjQy7dODDkEcjY4zEh2cuzNFAwY5fJAwZMHz2p0oLNFw0oZNWJibZCY9SDeH_srOGw:1mYrm5:nDj7AwAyn_FXs18WpZcQe37xtMebK7dqs7Sszxxf0wM', '2021-10-22 15:27:05.004183');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_planta` int(11) NOT NULL,
  `id_viverista` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` smallint(5) NOT NULL,
  `nombre_comun` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `precio_unidad` float NOT NULL,
  `imagen` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `nombre_comun`, `tipo`, `precio_unidad`, `imagen`, `fecha_actualizacion`) VALUES
(3, 'Veranera', 'Arbusto trepador', 2000, 'img_plantas/veranera_llhECBo.jpg', '2021-10-08 12:48:15'),
(4, 'Bonche', 'Arbusto', 5000, 'img_plantas/bonche_slWduYw.jpg', '2021-10-08 13:11:39'),
(5, 'Cactus', 'Suculenta', 10000, 'img_plantas/cactus.jpg', '2021-10-08 13:22:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuario`
--

CREATE TABLE `usuarios_usuario` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `nroRegistro` int(8) NOT NULL,
  `cedulaCliente` int(15) NOT NULL,
  `listaItems` mediumtext COLLATE latin1_spanish_ci NOT NULL,
  `montoTotal` float DEFAULT '0',
  `fechaVenta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viverista`
--

CREATE TABLE `viverista` (
  `cedula` int(15) NOT NULL,
  `nombres` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `correo` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `nro_celular` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_usuario`
--
ALTER TABLE `usuarios_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`nroRegistro`),
  ADD KEY `FK_ventas_clientes` (`cedulaCliente`);

--
-- Indices de la tabla `viverista`
--
ALTER TABLE `viverista`
  ADD PRIMARY KEY (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuarios_usuario`
--
ALTER TABLE `usuarios_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `nroRegistro` int(8) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
