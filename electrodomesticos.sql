-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-05-2023 a las 03:02:02
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `electrodomesticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparato_electro_aparatoe`
--

CREATE TABLE `aparato_electro_aparatoe` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aparato_electro_aparatoe`
--

INSERT INTO `aparato_electro_aparatoe` (`id`, `descripcion`) VALUES
(4, 'leiner el mas gay de este mundo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparato_electro_aparatoproveedor`
--

CREATE TABLE `aparato_electro_aparatoproveedor` (
  `id` bigint(20) NOT NULL,
  `aparatoe_id` bigint(20) NOT NULL,
  `proveedores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aparato_electro_aparatoproveedor`
--

INSERT INTO `aparato_electro_aparatoproveedor` (`id`, `aparatoe_id`, `proveedores_id`) VALUES
(1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add AparatoElectronico', 7, 'add_aparatoe'),
(26, 'Can change AparatoElectronico', 7, 'change_aparatoe'),
(27, 'Can delete AparatoElectronico', 7, 'delete_aparatoe'),
(28, 'Can view AparatoElectronico', 7, 'view_aparatoe'),
(29, 'Can add Nombre', 8, 'add_componente'),
(30, 'Can change Nombre', 8, 'change_componente'),
(31, 'Can delete Nombre', 8, 'delete_componente'),
(32, 'Can view Nombre', 8, 'view_componente'),
(33, 'Can add Fabicrante', 9, 'add_fabricante'),
(34, 'Can change Fabicrante', 9, 'change_fabricante'),
(35, 'Can delete Fabicrante', 9, 'delete_fabricante'),
(36, 'Can view Fabicrante', 9, 'view_fabricante'),
(37, 'Can add Tipo producto', 10, 'add_tipoproducto'),
(38, 'Can change Tipo producto', 10, 'change_tipoproducto'),
(39, 'Can delete Tipo producto', 10, 'delete_tipoproducto'),
(40, 'Can view Tipo producto', 10, 'view_tipoproducto'),
(41, 'Can add aparato proveedor', 11, 'add_aparatoproveedor'),
(42, 'Can change aparato proveedor', 11, 'change_aparatoproveedor'),
(43, 'Can delete aparato proveedor', 11, 'delete_aparatoproveedor'),
(44, 'Can view aparato proveedor', 11, 'view_aparatoproveedor'),
(45, 'Can add Proveedor', 12, 'add_proveedores'),
(46, 'Can change Proveedor', 12, 'change_proveedores'),
(47, 'Can delete Proveedor', 12, 'delete_proveedores'),
(48, 'Can view Proveedor', 12, 'view_proveedores');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$099y7X7gejiBWDhPmY2eEM$R/DUwD0xVzz/cjOwPkp39QbSgKQlMkfKlbsu88idDto=', '2023-05-17 00:20:05.833138', 1, 'root', '', '', 'maricardo@uniguajira.edu.co', 1, 1, '2023-05-16 23:34:16.637246');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componente_componente`
--

CREATE TABLE `componente_componente` (
  `id` bigint(20) NOT NULL,
  `especificacion` varchar(100) NOT NULL,
  `nombre` varchar(36) NOT NULL,
  `aparatoE_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `componente_componente`
--

INSERT INTO `componente_componente` (`id`, `especificacion`, `nombre`, `aparatoE_id`) VALUES
(4, 'me jopeo a ñeiner', 'ñeiner ñato', 4);

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
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-16 23:35:28.025223', '1', 'leiner el mas gay de este mundo', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-05-16 23:37:29.221057', '1', 'prueba 1', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 7, 1),
(3, '2023-05-17 00:20:58.487218', '1', 'ñeiner ñato', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-05-17 00:21:43.244546', '2', 'leiner el mas gay de este mundo', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-05-17 00:21:50.583012', '3', 'estoy piñuo', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-05-17 00:22:11.477740', '2', 'jajajajajja', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-05-17 00:22:23.645460', '3', 'es re gay', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-05-17 00:29:40.783884', '2', 'camarones rural gay', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-05-17 00:29:58.954632', '3', '2222', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-05-17 00:30:20.574825', '3', '2222', 3, '', 9, 1),
(11, '2023-05-17 00:30:25.143247', '2', 'camarones rural gay', 3, '', 9, 1),
(12, '2023-05-17 00:30:43.098285', '3', 'es re gay', 3, '', 8, 1),
(13, '2023-05-17 00:30:43.099286', '2', 'jajajajajja', 3, '', 8, 1),
(14, '2023-05-17 00:30:43.101458', '1', 'ñeiner ñato', 3, '', 8, 1),
(15, '2023-05-17 00:30:51.747078', '3', 'estoy piñuo', 3, '', 7, 1),
(16, '2023-05-17 00:30:51.749078', '2', 'leiner el mas gay de este mundo', 3, '', 7, 1),
(17, '2023-05-17 00:30:51.750078', '1', 'prueba 1', 3, '', 7, 1),
(18, '2023-05-17 02:40:44.790643', '4', 'leiner el mas gay de este mundo', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-05-17 02:40:55.342426', '4', 'ñeiner ñato', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-05-17 02:41:06.467993', '4', 'camarones rural gay', 1, '[{\"added\": {}}]', 9, 1),
(21, '2023-05-17 02:41:17.878118', '1', 'ñeiner ñato', 1, '[{\"added\": {}}]', 10, 1),
(22, '2023-05-17 02:41:32.821774', '1', 'wasa', 1, '[{\"added\": {}}]', 12, 1),
(23, '2023-05-17 02:44:17.097137', '1', 'AparatoProveedor object (1)', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'aparato_electro', 'aparatoe'),
(11, 'aparato_electro', 'aparatoproveedor'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'componente', 'componente'),
(5, 'contenttypes', 'contenttype'),
(9, 'fabricantes', 'fabricante'),
(12, 'proveedores', 'proveedores'),
(6, 'sessions', 'session'),
(10, 'tipo_producto', 'tipoproducto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-16 23:27:15.383029'),
(2, 'auth', '0001_initial', '2023-05-16 23:27:15.771045'),
(3, 'admin', '0001_initial', '2023-05-16 23:27:15.905586'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-16 23:27:15.911106'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-16 23:27:15.916106'),
(6, 'aparato_electro', '0001_initial', '2023-05-16 23:27:15.930483'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-16 23:27:16.014187'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-16 23:27:16.061796'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-16 23:27:16.111320'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-16 23:27:16.116263'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-16 23:27:16.155569'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-16 23:27:16.157568'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-16 23:27:16.162571'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-16 23:27:16.206862'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-16 23:27:16.253976'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-16 23:27:16.303248'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-16 23:27:16.309111'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-16 23:27:16.353461'),
(19, 'sessions', '0001_initial', '2023-05-16 23:27:16.394431'),
(20, 'componente', '0001_initial', '2023-05-17 00:19:30.817983'),
(21, 'componente', '0002_alter_componente_options', '2023-05-17 00:27:51.371167'),
(22, 'fabricantes', '0001_initial', '2023-05-17 00:27:51.444353'),
(23, 'tipo_producto', '0001_initial', '2023-05-17 02:18:19.579419'),
(24, 'proveedores', '0001_initial', '2023-05-17 02:40:22.376093'),
(25, 'aparato_electro', '0002_aparatoproveedor_aparatoe_aparatomasproveedor', '2023-05-17 02:40:22.473758');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('99t7vf7q3138z6o70g37xudasr6bfqug', '.eJxVjDsOwjAQRO_iGln-w1LS5wzWrr3BAWRLcVIh7k4ipYAp572Zt4i4LiWunec4ZXEVWpx-O8L05LqD_MB6bzK1uswTyV2RB-1yaJlft8P9OyjYy7ZmM4YMwWoEwyFb8ETGeg1gcvKKgrsQaxq9UpgcOwawChXrdPZui_h8Adu9N2w:1pz4th:lTdgTzvfvESketMYRmCXVXee71YNv_qQI9S8nbVX4rM', '2023-05-31 00:20:05.835439');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes_fabricante`
--

CREATE TABLE `fabricantes_fabricante` (
  `id` bigint(20) NOT NULL,
  `nameFabricante` varchar(100) NOT NULL,
  `domicilio` varchar(36) NOT NULL,
  `componente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fabricantes_fabricante`
--

INSERT INTO `fabricantes_fabricante` (`id`, `nameFabricante`, `domicilio`, `componente_id`) VALUES
(4, 'Miguel Angel Ricardo Orellano', 'camarones rural gay', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_proveedores`
--

CREATE TABLE `proveedores_proveedores` (
  `id` bigint(20) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `contacto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores_proveedores`
--

INSERT INTO `proveedores_proveedores` (`id`, `nombre_proveedor`, `direccion`, `contacto`) VALUES
(1, 'wasa', 'Cra 23#33-48', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto_tipoproducto`
--

CREATE TABLE `tipo_producto_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `caracteristicas` varchar(100) NOT NULL,
  `nombre` varchar(36) NOT NULL,
  `aparatoE_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_producto_tipoproducto`
--

INSERT INTO `tipo_producto_tipoproducto` (`id`, `caracteristicas`, `nombre`, `aparatoE_id`) VALUES
(1, 'no', 'ñeiner ñato', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aparato_electro_aparatoe`
--
ALTER TABLE `aparato_electro_aparatoe`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aparato_electro_aparatoproveedor`
--
ALTER TABLE `aparato_electro_aparatoproveedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aparato_electro_apar_aparatoe_id_693c6fae_fk_aparato_e` (`aparatoe_id`),
  ADD KEY `aparato_electro_apar_proveedores_id_a7d3dc54_fk_proveedor` (`proveedores_id`);

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
-- Indices de la tabla `componente_componente`
--
ALTER TABLE `componente_componente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `componente_component_aparatoE_id_87d1e2a7_fk_aparato_e` (`aparatoE_id`);

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
-- Indices de la tabla `fabricantes_fabricante`
--
ALTER TABLE `fabricantes_fabricante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fabricantes_fabrican_componente_id_cbe93740_fk_component` (`componente_id`);

--
-- Indices de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_producto_tipoproducto`
--
ALTER TABLE `tipo_producto_tipoproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_producto_tipopr_aparatoE_id_cd17913f_fk_aparato_e` (`aparatoE_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aparato_electro_aparatoe`
--
ALTER TABLE `aparato_electro_aparatoe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aparato_electro_aparatoproveedor`
--
ALTER TABLE `aparato_electro_aparatoproveedor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de la tabla `componente_componente`
--
ALTER TABLE `componente_componente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `fabricantes_fabricante`
--
ALTER TABLE `fabricantes_fabricante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_producto_tipoproducto`
--
ALTER TABLE `tipo_producto_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aparato_electro_aparatoproveedor`
--
ALTER TABLE `aparato_electro_aparatoproveedor`
  ADD CONSTRAINT `aparato_electro_apar_aparatoe_id_693c6fae_fk_aparato_e` FOREIGN KEY (`aparatoe_id`) REFERENCES `aparato_electro_aparatoe` (`id`),
  ADD CONSTRAINT `aparato_electro_apar_proveedores_id_a7d3dc54_fk_proveedor` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores_proveedores` (`id`);

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
-- Filtros para la tabla `componente_componente`
--
ALTER TABLE `componente_componente`
  ADD CONSTRAINT `componente_component_aparatoE_id_87d1e2a7_fk_aparato_e` FOREIGN KEY (`aparatoE_id`) REFERENCES `aparato_electro_aparatoe` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fabricantes_fabricante`
--
ALTER TABLE `fabricantes_fabricante`
  ADD CONSTRAINT `fabricantes_fabrican_componente_id_cbe93740_fk_component` FOREIGN KEY (`componente_id`) REFERENCES `componente_componente` (`id`);

--
-- Filtros para la tabla `tipo_producto_tipoproducto`
--
ALTER TABLE `tipo_producto_tipoproducto`
  ADD CONSTRAINT `tipo_producto_tipopr_aparatoE_id_cd17913f_fk_aparato_e` FOREIGN KEY (`aparatoE_id`) REFERENCES `aparato_electro_aparatoe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
