-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 07:30 PM
-- Server version: 10.3.11-MariaDB-1:10.3.11+maria~stretch
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocioinfantil`
--

-- --------------------------------------------------------

--
-- Table structure for table `acciones_mensajes`
--

CREATE TABLE `acciones_mensajes` (
  `id_accion_mensaje` int(3) NOT NULL,
  `accion_mensaje` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asuntos_centros_crm`
--

CREATE TABLE `asuntos_centros_crm` (
  `id_asunto_centro_crm` int(3) NOT NULL,
  `asunto_centro_crm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asuntos_usuarios_crm`
--

CREATE TABLE `asuntos_usuarios_crm` (
  `id_asunto_usuario_crm` int(3) NOT NULL,
  `asunto_usuario_crm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basura`
--

CREATE TABLE `basura` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de pruebas';

-- --------------------------------------------------------

--
-- Table structure for table `centros`
--

CREATE TABLE `centros` (
  `id_centro` int(11) NOT NULL,
  `centro` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `web` varchar(200) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `cp` int(5) DEFAULT NULL,
  `clave` varchar(128) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `id_pais` int(3) DEFAULT NULL,
  `id_provincia` int(3) DEFAULT NULL,
  `persona_contacto` varchar(100) DEFAULT NULL,
  `movil` int(9) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `CIF` varchar(9) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `alertas` int(1) NOT NULL DEFAULT 0 COMMENT '0:No;1:Todas;2:Mis Filtros',
  `observaciones` text CHARACTER SET utf8 DEFAULT NULL,
  `logo` int(1) NOT NULL DEFAULT 0 COMMENT '0:No subido sección Centros colaboradores;1:Subido sección Centros colaboradores;',
  `wannacoins` int(11) NOT NULL DEFAULT 0 COMMENT 'wannacoins actual',
  `premium` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'indica si es cuenta premiun',
  `fecha_caducidad_premium` date DEFAULT NULL COMMENT 'indica cuando caduca la cuenta premium'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `centros_crm`
--

CREATE TABLE `centros_crm` (
  `id_centro_crm` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_asunto_centro_crm` int(3) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centros_modalidades`
--

CREATE TABLE `centros_modalidades` (
  `id_centro` int(11) NOT NULL,
  `id_modalidad` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centros_provincias`
--

CREATE TABLE `centros_provincias` (
  `id_centro` int(11) NOT NULL,
  `id_provincia` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centros_situaciones`
--

CREATE TABLE `centros_situaciones` (
  `id_centro` int(11) NOT NULL,
  `id_situacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centros_tematicas`
--

CREATE TABLE `centros_tematicas` (
  `id_centro` int(11) NOT NULL,
  `id_tematica` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `centros_wannacoins`
--

CREATE TABLE `centros_wannacoins` (
  `id_centro_wannacoins` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_solicitud` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de movimientos de wannacoins',
  `wannacoins` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='log de movimientos de wannacoins';

-- --------------------------------------------------------

--
-- Table structure for table `creditos_duracion`
--

CREATE TABLE `creditos_duracion` (
  `id_credito_duracion` int(11) NOT NULL,
  `duracion_min` int(11) NOT NULL,
  `duracion_max` int(11) NOT NULL,
  `creditos` float NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de configuracion de duracion del curso/creditos';

-- --------------------------------------------------------

--
-- Table structure for table `creditos_num_alumnos`
--

CREATE TABLE `creditos_num_alumnos` (
  `id_credito_num_alumno` int(11) NOT NULL,
  `num_alumnos_min` int(11) NOT NULL,
  `num_alumnos_max` int(11) NOT NULL,
  `creditos` float NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de configuracion de numero de alumnos/creditos';

-- --------------------------------------------------------

--
-- Table structure for table `creditos_precio_horas`
--

CREATE TABLE `creditos_precio_horas` (
  `id_credito_precio_hora` int(11) NOT NULL,
  `precio_min` int(11) NOT NULL,
  `precio_max` int(11) NOT NULL,
  `creditos` float NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de configuracion de precio por hora/creditos';

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `curso` varchar(500) DEFAULT NULL,
  `id_provincia` int(3) DEFAULT NULL,
  `id_modalidad` int(1) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `duracion` varchar(30) DEFAULT NULL,
  `id_tematica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emails_admin_presu`
--

CREATE TABLE `emails_admin_presu` (
  `id_email` int(11) NOT NULL,
  `id_presupuesto` int(11) NOT NULL,
  `motivos` text DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_email`
--

CREATE TABLE `log_email` (
  `id_log_email` int(11) NOT NULL,
  `addressee` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `additional_headers` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_parameters` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `enviado` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `id_presupuesto` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_accion_mensaje` int(3) DEFAULT 0,
  `leido` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mensajes_solicitudes`
--

CREATE TABLE `mensajes_solicitudes` (
  `id_mensaje` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `leido` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modalidades`
--

CREATE TABLE `modalidades` (
  `id_modalidad` int(1) NOT NULL,
  `modalidad` varchar(30) DEFAULT NULL,
  `creditos` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motivos_baja_usuario`
--

CREATE TABLE `motivos_baja_usuario` (
  `id_motivo_baja_usuario` int(3) NOT NULL,
  `motivo_baja_usuario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `motivos_cancela_presupuesto`
--

CREATE TABLE `motivos_cancela_presupuesto` (
  `id_motivo_cancela_presupuesto` int(3) NOT NULL,
  `motivo_cancela_presupuesto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `motivos_cancela_solicitud`
--

CREATE TABLE `motivos_cancela_solicitud` (
  `id_motivo_cancela_solicitud` int(3) NOT NULL,
  `motivo_cancela_solicitud` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movimientos_banco`
--

CREATE TABLE `movimientos_banco` (
  `id_movimiento_banco` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_tarifa` int(11) NOT NULL,
  `tipo` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'w=wannacoins, b=planes',
  `importe` float NOT NULL,
  `referencia_banco` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `id_respuesta_banco` int(11) DEFAULT NULL,
  `confirmado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='listado de transacciones';

-- --------------------------------------------------------

--
-- Table structure for table `movimientos_banco_planes`
--

CREATE TABLE `movimientos_banco_planes` (
  `id_movimiento_banco` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `tipo` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'w=wannacoins, b=planes',
  `importe` float NOT NULL,
  `referencia_banco` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `id_respuesta_banco` int(11) DEFAULT NULL,
  `confirmado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='listado de transacciones';

-- --------------------------------------------------------

--
-- Table structure for table `ofertaformativa`
--

CREATE TABLE `ofertaformativa` (
  `id_ofertaformativa` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(200) DEFAULT NULL,
  `horas` int(4) DEFAULT NULL,
  `duracion` varchar(50) DEFAULT NULL,
  `id_modalidad` int(1) NOT NULL DEFAULT 4,
  `precio` float DEFAULT NULL,
  `becas` int(1) DEFAULT NULL,
  `descuentos` int(1) DEFAULT NULL,
  `subvenciones` int(1) DEFAULT NULL,
  `temario` varchar(200) DEFAULT NULL,
  `detalles` text DEFAULT NULL,
  `id_centro` int(11) NOT NULL,
  `id_tipocurso` int(11) NOT NULL DEFAULT 4,
  `id_tematica` int(11) DEFAULT NULL,
  `direccion_imparticion` varchar(300) NOT NULL DEFAULT '',
  `id_provincia` int(11) NOT NULL DEFAULT 1,
  `homologado` int(1) NOT NULL DEFAULT 0 COMMENT '0:No; 1:Si;',
  `entidad_certificadora` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ofertaformativa_modalidad`
--

CREATE TABLE `ofertaformativa_modalidad` (
  `id_modalidad` int(11) NOT NULL,
  `id_ofertaformativa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(3) UNSIGNED NOT NULL,
  `pais` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id_plan` int(11) NOT NULL,
  `plan_promo` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'será el plan para pasar de gratuito con limite de presupuesto a sin limite de presupuestos',
  `plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_solicitudes` smallint(6) NOT NULL,
  `num_presupuestos` smallint(6) DEFAULT NULL,
  `precio` float NOT NULL,
  `tipo_precio` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'p=porcentaje, e=euros',
  `informacion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Información de los bonos para los usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `planes_comprados`
--

CREATE TABLE `planes_comprados` (
  `id_plan_comprado` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `num_solicitudes` int(11) NOT NULL,
  `num_solicitudes_gastadas` int(11) NOT NULL DEFAULT 0,
  `fecha` datetime NOT NULL,
  `importe` float NOT NULL,
  `referencia_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bonos comprados por los usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `planes_solicitudes`
--

CREATE TABLE `planes_solicitudes` (
  `id_plan_solicitud` int(11) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `id_solicitud` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `referencia_banco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `importe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Log de movimientos de la gestión de bono/solicitud';

-- --------------------------------------------------------

--
-- Table structure for table `prelanzamiento`
--

CREATE TABLE `prelanzamiento` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presupuestos`
--

CREATE TABLE `presupuestos` (
  `id_presupuesto` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ofertaformativa` int(11) NOT NULL,
  `leida` int(1) NOT NULL DEFAULT 0,
  `observaciones` text DEFAULT NULL,
  `precio_final` float NOT NULL DEFAULT 100000,
  `detalles_beca` varchar(200) DEFAULT NULL,
  `detalles_descuento` varchar(200) DEFAULT NULL,
  `detalles_subvenciones` varchar(200) DEFAULT NULL,
  `fecha_presupuesto` datetime NOT NULL,
  `fecha_fin_presupuesto` date DEFAULT NULL,
  `id_motivo_cancela_presupuesto` int(3) NOT NULL DEFAULT 1,
  `id_modalidad` int(2) NOT NULL,
  `id_provincia` int(3) NOT NULL,
  `lugar_imparticion` varchar(200) NOT NULL,
  `num_horas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presupuestos_desactivados`
--

CREATE TABLE `presupuestos_desactivados` (
  `id_presupuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `presupuestos_pendientes`
--

CREATE TABLE `presupuestos_pendientes` (
  `id_presupuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `presupuestos_precios`
--

CREATE TABLE `presupuestos_precios` (
  `id_presupuesto` int(10) UNSIGNED NOT NULL,
  `id_tipo_precio` int(10) UNSIGNED NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de precios de los presupuestos';

-- --------------------------------------------------------

--
-- Table structure for table `presupuestos_rechazados`
--

CREATE TABLE `presupuestos_rechazados` (
  `id_presupuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` int(3) UNSIGNED NOT NULL,
  `provincia` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `respuesta_banco`
--

CREATE TABLE `respuesta_banco` (
  `id_respuesta_banco` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `info` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'json de los datos recibidos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='registramos cualquier datos que recibimos en la pagina de pago';

-- --------------------------------------------------------

--
-- Table structure for table `situaciones`
--

CREATE TABLE `situaciones` (
  `id_situacion` int(1) NOT NULL,
  `situacion` varchar(30) DEFAULT NULL,
  `multiplo_creditos` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id_solicitud` int(11) NOT NULL,
  `id_usuario` int(3) NOT NULL,
  `id_curso` int(3) NOT NULL,
  `precio` int(11) NOT NULL,
  `id_modalidad` int(2) NOT NULL,
  `id_provincia` int(3) NOT NULL,
  `detalles` text DEFAULT NULL,
  `fecha_peticion` date NOT NULL,
  `fecha_caducidad` date DEFAULT NULL,
  `cancela_usuario` int(1) DEFAULT NULL,
  `mail_caducidad` int(1) NOT NULL DEFAULT 0,
  `num_alumnos` int(11) NOT NULL,
  `bonificado` int(1) NOT NULL,
  `lugar_imparticion` varchar(200) NOT NULL,
  `titulacion` varchar(200) NOT NULL,
  `id_situacion` int(1) NOT NULL,
  `nombre_empresa` varchar(200) NOT NULL,
  `cif_empresa` varchar(9) CHARACTER SET utf8 NOT NULL,
  `direccion_empresa` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'direccion de la empresa',
  `cp_empresa` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo postal de la empresa',
  `id_motivo_cancela_solicitud` int(3) NOT NULL,
  `baja_usuario` int(1) NOT NULL COMMENT '0:No;1:Sí;',
  `sector_actividad` varchar(200) CHARACTER SET utf8 NOT NULL,
  `id_tipo_tam_empresa` int(11) NOT NULL DEFAULT 0,
  `perfil_alumno` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_tipo_precio` int(11) NOT NULL COMMENT 'tipo de precio en el que quiere ver la comparacion de precios',
  `nivel_alumno` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `publica` tinyint(1) NOT NULL DEFAULT 0,
  `privada_con_limite` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'solicitudes publicas sin limite de presupuestos',
  `id_plan` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tarifa_wannacoins`
--

CREATE TABLE `tarifa_wannacoins` (
  `id_tarifa_wannacoins` int(11) NOT NULL,
  `tarifa_wannacoins` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `wannacoins` int(11) NOT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT 0,
  `informacion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tematicas`
--

CREATE TABLE `tematicas` (
  `id_tematica` int(1) NOT NULL,
  `tematica` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipocursos`
--

CREATE TABLE `tipocursos` (
  `id_tipocurso` int(3) NOT NULL,
  `tipocurso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_precios`
--

CREATE TABLE `tipo_precios` (
  `id_tipo_precio` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `oculto_centro` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'los valores marcados como 1 no seran visibles para los centros',
  `activo` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'eliminado logico',
  `unidad` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `destacar` tinyint(1) NOT NULL,
  `orden` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_tam_empresas`
--

CREATE TABLE `tipo_tam_empresas` (
  `id_tipo_tam_empresa` int(10) UNSIGNED NOT NULL,
  `tam_empresa` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `creditos` float NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tipos de tamaños de la empresa';

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefono` int(9) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `clave` varchar(128) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `id_pais` int(3) DEFAULT NULL,
  `id_provincia` int(3) DEFAULT NULL,
  `id_situacion` int(1) DEFAULT NULL,
  `observaciones` text CHARACTER SET utf8 DEFAULT NULL,
  `id_motivo_baja_usuario` int(3) NOT NULL,
  `planes_pendientes` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_crm`
--

CREATE TABLE `usuarios_crm` (
  `id_usuario_crm` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_asunto_usuario_crm` int(3) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wannawins`
--

CREATE TABLE `wannawins` (
  `id_wannawin` int(11) NOT NULL,
  `id_presupuesto` int(11) DEFAULT NULL,
  `wannawin` int(1) NOT NULL,
  `megusta` int(1) NOT NULL,
  `confirmada` int(1) NOT NULL,
  `fecha_wannawin` date DEFAULT NULL,
  `factura` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Ruta del archivo de la factura del wannawin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wannawins_centros`
--

CREATE TABLE `wannawins_centros` (
  `id_wc` int(11) NOT NULL,
  `id_matricula` int(11) NOT NULL,
  `visto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acciones_mensajes`
--
ALTER TABLE `acciones_mensajes`
  ADD PRIMARY KEY (`id_accion_mensaje`);

--
-- Indexes for table `asuntos_centros_crm`
--
ALTER TABLE `asuntos_centros_crm`
  ADD PRIMARY KEY (`id_asunto_centro_crm`);

--
-- Indexes for table `asuntos_usuarios_crm`
--
ALTER TABLE `asuntos_usuarios_crm`
  ADD PRIMARY KEY (`id_asunto_usuario_crm`);

--
-- Indexes for table `basura`
--
ALTER TABLE `basura`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`id_centro`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `centros_crm`
--
ALTER TABLE `centros_crm`
  ADD PRIMARY KEY (`id_centro_crm`);

--
-- Indexes for table `centros_wannacoins`
--
ALTER TABLE `centros_wannacoins`
  ADD PRIMARY KEY (`id_centro_wannacoins`);

--
-- Indexes for table `creditos_duracion`
--
ALTER TABLE `creditos_duracion`
  ADD PRIMARY KEY (`id_credito_duracion`);

--
-- Indexes for table `creditos_num_alumnos`
--
ALTER TABLE `creditos_num_alumnos`
  ADD PRIMARY KEY (`id_credito_num_alumno`);

--
-- Indexes for table `creditos_precio_horas`
--
ALTER TABLE `creditos_precio_horas`
  ADD PRIMARY KEY (`id_credito_precio_hora`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `emails_admin_presu`
--
ALTER TABLE `emails_admin_presu`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `log_email`
--
ALTER TABLE `log_email`
  ADD PRIMARY KEY (`id_log_email`);

--
-- Indexes for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`);

--
-- Indexes for table `mensajes_solicitudes`
--
ALTER TABLE `mensajes_solicitudes`
  ADD PRIMARY KEY (`id_mensaje`);

--
-- Indexes for table `modalidades`
--
ALTER TABLE `modalidades`
  ADD PRIMARY KEY (`id_modalidad`);

--
-- Indexes for table `motivos_baja_usuario`
--
ALTER TABLE `motivos_baja_usuario`
  ADD PRIMARY KEY (`id_motivo_baja_usuario`);

--
-- Indexes for table `motivos_cancela_presupuesto`
--
ALTER TABLE `motivos_cancela_presupuesto`
  ADD PRIMARY KEY (`id_motivo_cancela_presupuesto`);

--
-- Indexes for table `motivos_cancela_solicitud`
--
ALTER TABLE `motivos_cancela_solicitud`
  ADD PRIMARY KEY (`id_motivo_cancela_solicitud`);

--
-- Indexes for table `movimientos_banco`
--
ALTER TABLE `movimientos_banco`
  ADD PRIMARY KEY (`id_movimiento_banco`);

--
-- Indexes for table `movimientos_banco_planes`
--
ALTER TABLE `movimientos_banco_planes`
  ADD PRIMARY KEY (`id_movimiento_banco`);

--
-- Indexes for table `ofertaformativa`
--
ALTER TABLE `ofertaformativa`
  ADD PRIMARY KEY (`id_ofertaformativa`);

--
-- Indexes for table `ofertaformativa_modalidad`
--
ALTER TABLE `ofertaformativa_modalidad`
  ADD PRIMARY KEY (`id_modalidad`,`id_ofertaformativa`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id_plan`);

--
-- Indexes for table `planes_comprados`
--
ALTER TABLE `planes_comprados`
  ADD PRIMARY KEY (`id_plan_comprado`);

--
-- Indexes for table `planes_solicitudes`
--
ALTER TABLE `planes_solicitudes`
  ADD PRIMARY KEY (`id_plan_solicitud`);

--
-- Indexes for table `prelanzamiento`
--
ALTER TABLE `prelanzamiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD PRIMARY KEY (`id_presupuesto`);

--
-- Indexes for table `presupuestos_desactivados`
--
ALTER TABLE `presupuestos_desactivados`
  ADD PRIMARY KEY (`id_presupuesto`);

--
-- Indexes for table `presupuestos_pendientes`
--
ALTER TABLE `presupuestos_pendientes`
  ADD PRIMARY KEY (`id_presupuesto`);

--
-- Indexes for table `presupuestos_precios`
--
ALTER TABLE `presupuestos_precios`
  ADD UNIQUE KEY `id_presupuesto` (`id_presupuesto`,`id_tipo_precio`);

--
-- Indexes for table `presupuestos_rechazados`
--
ALTER TABLE `presupuestos_rechazados`
  ADD PRIMARY KEY (`id_presupuesto`);

--
-- Indexes for table `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_provincia`);

--
-- Indexes for table `respuesta_banco`
--
ALTER TABLE `respuesta_banco`
  ADD PRIMARY KEY (`id_respuesta_banco`);

--
-- Indexes for table `situaciones`
--
ALTER TABLE `situaciones`
  ADD PRIMARY KEY (`id_situacion`);

--
-- Indexes for table `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id_solicitud`);

--
-- Indexes for table `tarifa_wannacoins`
--
ALTER TABLE `tarifa_wannacoins`
  ADD PRIMARY KEY (`id_tarifa_wannacoins`);

--
-- Indexes for table `tematicas`
--
ALTER TABLE `tematicas`
  ADD PRIMARY KEY (`id_tematica`);

--
-- Indexes for table `tipocursos`
--
ALTER TABLE `tipocursos`
  ADD PRIMARY KEY (`id_tipocurso`);

--
-- Indexes for table `tipo_precios`
--
ALTER TABLE `tipo_precios`
  ADD PRIMARY KEY (`id_tipo_precio`);

--
-- Indexes for table `tipo_tam_empresas`
--
ALTER TABLE `tipo_tam_empresas`
  ADD PRIMARY KEY (`id_tipo_tam_empresa`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usuarios_crm`
--
ALTER TABLE `usuarios_crm`
  ADD PRIMARY KEY (`id_usuario_crm`);

--
-- Indexes for table `wannawins`
--
ALTER TABLE `wannawins`
  ADD PRIMARY KEY (`id_wannawin`);

--
-- Indexes for table `wannawins_centros`
--
ALTER TABLE `wannawins_centros`
  ADD PRIMARY KEY (`id_wc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basura`
--
ALTER TABLE `basura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `centros_crm`
--
ALTER TABLE `centros_crm`
  MODIFY `id_centro_crm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `centros_wannacoins`
--
ALTER TABLE `centros_wannacoins`
  MODIFY `id_centro_wannacoins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditos_duracion`
--
ALTER TABLE `creditos_duracion`
  MODIFY `id_credito_duracion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditos_num_alumnos`
--
ALTER TABLE `creditos_num_alumnos`
  MODIFY `id_credito_num_alumno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditos_precio_horas`
--
ALTER TABLE `creditos_precio_horas`
  MODIFY `id_credito_precio_hora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails_admin_presu`
--
ALTER TABLE `emails_admin_presu`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_email`
--
ALTER TABLE `log_email`
  MODIFY `id_log_email` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensajes_solicitudes`
--
ALTER TABLE `mensajes_solicitudes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movimientos_banco`
--
ALTER TABLE `movimientos_banco`
  MODIFY `id_movimiento_banco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movimientos_banco_planes`
--
ALTER TABLE `movimientos_banco_planes`
  MODIFY `id_movimiento_banco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes_comprados`
--
ALTER TABLE `planes_comprados`
  MODIFY `id_plan_comprado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes_solicitudes`
--
ALTER TABLE `planes_solicitudes`
  MODIFY `id_plan_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id_provincia` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `respuesta_banco`
--
ALTER TABLE `respuesta_banco`
  MODIFY `id_respuesta_banco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarifa_wannacoins`
--
ALTER TABLE `tarifa_wannacoins`
  MODIFY `id_tarifa_wannacoins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_precios`
--
ALTER TABLE `tipo_precios`
  MODIFY `id_tipo_precio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_tam_empresas`
--
ALTER TABLE `tipo_tam_empresas`
  MODIFY `id_tipo_tam_empresa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios_crm`
--
ALTER TABLE `usuarios_crm`
  MODIFY `id_usuario_crm` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
