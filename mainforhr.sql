-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 07:29 PM
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
-- Database: `mainforhr`
--

-- --------------------------------------------------------

--
-- Table structure for table `active`
--

CREATE TABLE `active` (
  `id_active` int(11) NOT NULL,
  `active` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active`
--

INSERT INTO `active` (`id_active`, `active`) VALUES
(1, 'Activado'),
(2, 'Desactivado');

-- --------------------------------------------------------

--
-- Table structure for table `alertas`
--

CREATE TABLE `alertas` (
  `id` int(11) NOT NULL,
  `id_r` int(11) NOT NULL,
  `relativo_a` varchar(30) NOT NULL,
  `id_r2` int(11) NOT NULL,
  `relativo_a2` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `ok` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alertas`
--

INSERT INTO `alertas` (`id`, `id_r`, `relativo_a`, `id_r2`, `relativo_a2`, `fecha`, `tipo`, `ok`) VALUES
(1, 4, 'employee', 2, 'employee_work', '2018-04-17', 'fin_contrato', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_profesional`
--

CREATE TABLE `categoria_profesional` (
  `id_categoria_profesional` int(11) NOT NULL,
  `categoria_profesional` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria_profesional`
--

INSERT INTO `categoria_profesional` (`id_categoria_profesional`, `categoria_profesional`) VALUES
(1, 'Director'),
(2, 'Mando intermedio'),
(3, 'Técnico'),
(4, 'Trabajador Cualificado'),
(5, 'Trabajador con Baja Cualificación');

-- --------------------------------------------------------

--
-- Table structure for table `competencia`
--

CREATE TABLE `competencia` (
  `id_competencia` int(11) NOT NULL,
  `id_tipo_competencia` int(11) NOT NULL,
  `competencia` varchar(100) NOT NULL,
  `id_tipo_clasificacion` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `competencia`
--

INSERT INTO `competencia` (`id_competencia`, `id_tipo_competencia`, `competencia`, `id_tipo_clasificacion`, `descripcion`) VALUES
(1, 6, 'Capacidad de aprendizaje y motivación por aprender.', 2, 'Creatividad e innovación\r\nCapacidad de aplicar los conocimientos teóricos en la práctica\r\nCapacidad de gestión de la información\r\nMotivación por la calidad\r\n'),
(2, 6, 'Capacidad de resolución de problemas.', 2, 'Capacidad de aplicación de la información aprendida para resolución de problemas.\r\nidentificación de necesidades tecnológicas y la resolución de problemas técnicos. También incluye la identificación de necesidades de actualización en las competencias digitales.'),
(3, 5, 'Información y alfabetización digital', 1, 'Capacidad de búsqueda de información digital, de evaluación de su fiabilidad y relevancia y a su organización y almacenamiento.'),
(4, 6, 'Disposición positiva hacía el cambio', 2, 'Adaptación a los cambios dentro y fuera de la organización'),
(5, 6, 'Autocontrol', 2, 'Capacidad de mantener bajo control las emociones'),
(6, 6, 'ingles', 4, 'Certifcado B1 ingles'),
(7, 6, ' Orientación al cliente', 2, 'Capacidad de entender y aplicar a todas las actividades realizadas el concepto \"por y para el cliente\"'),
(8, 6, ' Capacidad de organización', 2, ' Capacidad de organización y planificación para ejecutar el trabajo de manera eficiente cumpliendo los objetivos y plazos marcados.\r\n'),
(9, 6, 'Capacidad de comunicación', 2, 'Capacidad de comunicación oral y escrita que permita sintetizar y presentar el trabajo realizado.\r\nCapacidad de análisis y síntesis'),
(33, 7, 'GESTIÓN DE PROYECTOS', 2, 'Selección de personal a su cargo\r\nCapacidad de definición de necesidades de personal, de gestionar la captación y capacitación de nuevos miembros del equipo, asi como de la implicación en el proyecto\r\nCapacidad de negociación (de compra y de venta)\r\nAportación de Soluciones a los problemas \r\nCapacidad de planificación\r\nSeguimiento de de la planificación y las desviaciones\r\nPlanificación de presupuestos\r\nCapacidad de analisis (de proyectos y su viabilidad)\r\nControl de presupuestos (Control de Facturacion y cobros, seguimiento de gastos)\r\n'),
(34, 7, 'CAPACIDAD COMERCIAL', 2, 'Identificación de nuevas oportunidades de negocio y diseño del producto\r\nDetección de Necesidades( Detección de Necesidades del cliente, o adaptación de las necesidades del cliente a productos en cartera)\r\n'),
(10, 5, ' Uso y gestión de redes sociales   ', 1, 'Capacidad de crear y gestionar comunidad de clientes en redes sociales.\r\nSer miembro activo en redes sociales 2.0: LinkedIn, Twitter, RSS, Trello, Google Drive…'),
(11, 5, 'Capacidad manejo Paquete office', 1, 'Capacidad nivel alto de manejo de las aplicaciones de Office'),
(12, 5, 'Diseño paginas web', 1, 'Capacidad de Diseño de páginas web en Word Press al menos nivel basico (requerimientos de una landing)'),
(13, 5, 'Comunicación y colaboración digital', 1, 'Capacidad de Uso de Internet como medio de comunicación y como fuente de información:\r\n- interacción con otras personas utilizando tecnología digitales\r\n- comunicar, compartir recursos digitales y colaborar en la creación de contenidos.\r\n      §  reuniones y conferencias virtuales \r\n      §  Chat instantáneos \r\n      §  Asistente de gestión de agendas \r\n      §  Trabajo en remoto/nube \r\n      §  Notas en la nube '),
(14, 5, ' Creación de contenido digital.', 1, ' Capacidad de creación y edición de nuevos contenidos, incluyendo la programación informática, y a la gestión de los derechos de autor de las creaciones digitales'),
(15, 5, 'Seguridad tecnologíca', 1, 'Capacidad referida al uso seguro y sostenible de la tecnología e información digital: protección de los dispositivos y de los datos personales, de la salud y del medio ambiente'),
(16, 7, 'CAPACIDAD DE LIDERAZGO', 2, 'Gestión\r\nGestión en un entorno de trabajo no estructurado\r\nComprensión de las necesidades profesionales\r\nConstrucción de equipos\r\nMantener la credibilidad\r\nMantener la visibilidad\r\nMantener la claridad de la dirección de la gestión\r\nComprensión de la organización\r\nSembrar compromiso\r\nObtener el apoyo y compromiso de la alta dirección\r\nCapacidad para manejar el estrés\r\nDefinición de objetivos\r\nDefinir objetivos claros\r\nCreación de implicación personal en todos los niveles\r\nConstrucción de Imagen\r\nMotivación\r\nMotivar personas\r\nManejo de conflictos\r\nSolución de problemas\r\nToma de decisiones en grupo\r\nGestión de Equipos multidisciplinarios\r\nEmprendimiento\r\nSer orientado a la acción, Ser emprendedor\r\nBúsqueda de nuevos proyectos\r\n'),
(17, 7, 'GESTIÓN DE PERSONAS', 2, 'Capacidad para desarrollar a las personas\r\nSupervisión y gestión del equipo del proyecto\r\nManejar habilidades interpersonales'),
(18, 7, ' MARKETING DIGITAL', 1, 'o   Disponer de un plan de marketing digital \r\no   Captar y fidelizar clientes mediante una estrategia digital \r\no   Manejar de forma fluida las redes sociales para información, comunicación, promoción y seguimiento de eventos\r\no   Crear y/o gestionar aplicaciones de dispositivos móviles para comunicarse y relacionarse mejor con los clientes. \r\no   Tener una estrategia y tecnología específica para gestionar las relaciones con los clientes'),
(19, 7, 'WEB MARKETING', 1, 'o   Elaborar un diseño web orientado al uso eficiente por parte del usuario\r\no   Realizar un análisis adecuado de la actividad en los sites de su proyecto  en internet (analítica web)\r\no   Lograr un buen posicionamiento para sus sites en internet en buscadores de forma orgánica (SEO)\r\no   Tener un plan estratégico de comercio electrónico multicanal para cada proyecto, o una genérico aplicable a todos los proyectos '),
(20, 7, ' E COMMERCE', 1, 'o   Aprovechar tecnologías digitales dentro del punto de venta \r\no   Uso de medios de pago utilizando las tecnologías digitales que faciliten la compra \r\no   Digitalización de la gestión del suministro y la logística\r\no   Digitalización de la gestión de la red comercial\r\no   Incorporación del móvil en el comercio electrónico (consideración app) '),
(21, 7, 'CUSTOMER EXPERIENCE', 1, 'o   Disponer de estrategia y canales de Atención al Cliente a través de medios sociales y digitales \r\no   Diagnosticar la experiencia del cliente en los momentos de la verdad del cliente\r\no   Implementar un Plan de CustomerExperience'),
(22, 7, 'INNOVACIÓN', 1, 'Tener una estrategia empresarial y metodologías orientadas a formentarla innovación digital'),
(23, 8, 'Capacidad de análisis de información', 3, 'Capacidad de análisis de información, sistematización y redacción.'),
(24, 8, 'Capacidad de Gestionar proyectos ', 3, 'Capacidad de Gestionar los proyectos asignados en todas las fases (formulación, ejecución, seguimiento):\r\n \r\nSaber planificar el desarrollo de un proyecto estableciendo un cronograma e indicando los recursos necesarios.\r\nGestionar la documentación necesaria para la formulación de los proyectos: marco legal, bases y formularios de convocatoria, prioridades estratégicas y temáticas.\r\nRealizar la memorias técnicas de los proyectos.\r\nTener una excelente redacción y sin faltas de ortografía.\r\nRealizar presupuestos de los proyectos.\r\nAsegurar una adecuada gestión documental de los proyectos.\r\nConocer las fuentes de financiación de proyectos / organizaciones que publican concursos\r\nSeleccionar proveedores acorde al perfil previamente definido, a través de Linkedin, Infojobs u otros.\r\nRealizar seguimiento y revisiones iniciales exhaustivas al desarrollo del proyecto asigando'),
(25, 8, 'Capacidad de Preparación documentación técnica', 3, 'Capacidad de Preparación documentación técnica de proyectos de licitaciones presentadas y su justificación'),
(26, 8, 'Capacidad de coordinación con otros departamentos', 3, 'Capacidad de coordinación con otros departamentos de la organización para el seguimiento, puesta en marcho y/o coordinación de proyectos'),
(27, 8, 'Capacidad de  Creación', 3, 'Capacidad de  Creación y configuración de actividades y recursos:\r\n\r\nCreación de copias de seguridad.\r\nRestauración de copias de seguridad\r\nAsistencia técnica.\r\nSelección y búsqueda de proveedores'),
(28, 8, 'Capacidad de conocimiento de normativa', 3, 'Conocer y estar al día de la normativa de seguimiento de los proyectos y garantizar su cumplimiento.'),
(29, 8, 'Capacidad de usabilidad', 3, 'Disponer de conocimientos profundos de usabilidad y accesibilidad.'),
(30, 8, 'Capacidad de motivación tecnológica', 3, 'Estar motivado por las nuevas tecnologías: Moodle, eXeLearning, Wordpress, HTML, CSS…'),
(31, 8, 'Capacidad de innovación y creación ', 3, 'Capacidad de innovación y creación '),
(32, 8, 'Capacidad de gestión y conocimiento de la tecnología web.', 3, 'Interes por las nuevas tendencias y actualidad del sector eLearning.\r\nDisponer de conocimientos de herramientas de diseño.\r\nTener interés por la actualización continua. '),
(35, 2, 'CREACIÓN Y GESTIÓN DE EMPRESAS', 3, 'CREACIÓN Y GESTIÓN DE EMPRESAS'),
(36, 2, 'GESTIÓN FINANCIERA', 3, '• Determinar las necesidades financieras de la empresa\r\n• Gestionar y controlar la tesorería y su presupuesto\r\n• Manejar aplicaciones ofimáticas en la gestión de la información y la documentación\r\n• Gestionar la información y contratación de los recursos financieros'),
(37, 2, 'COMERCIALIZACIÓN Y ADMINISTRACIÓN DE SERVICIOS FINANCIEROS', 3, 'COMERCIALIZACIÓN Y ADMINISTRACIÓN DE PRODUCTOS Y SERVICIOS FINANCIEROS:\r\n• Gestionar y controlar las operaciones de caja.\r\n• Realizar el asesoramiento y la gestión administrativa de los productos financieros.'),
(38, 2, 'GESTIÓN CONTABLE Y DE AUDITORÍA', 3, 'Realizar la gestión contable y fiscal.\r\nManejar el programa de contabilidad y presentación de impuesto\r\nAnalisis de los resultados contables\r\nAnalisis y consejos contables\r\nAnalisis y consejos sobre impuestos'),
(39, 2, 'ACTIVIDADES DE GESTIÓN ADMINISTRATIVA', 3, 'ACTIVIDADES DE GESTIÓN ADMINISTRATIVA'),
(40, 2, 'GESTIÓN DEL CLIMA LABORAL', 3, 'Implementar acciones y políticas que promuevan la motivación, integración y mejora del clima laboral en la empresa adaptadas a diversos colectivos de trabajadores.\r\nDesarrollar y aplicar habilidades directivas acordes a la dirección y desarrollo de personas, equipos de trabajo, manejo de la resolución y negociación de conflictos.\r\n'),
(41, 2, 'DESARROLLO DE ESTRATEGIA DE RRHH', 3, 'Ajustar la estrategia de recursos humanos a la estrategia general de la organización, a la complejidad dinámica del mercado laboral y a las políticas sociolaborales que les afectan.\r\nPlantear procesos de planificación, evaluación de rendimiento y retribución de recursos humanos acordes con la estrategia, estructura y cultura organizativas.\r\nDeterminar y aplicar técnicas de análisis-descripción de puestos, selección de personas, de formación y aprendizaje continuo para el desarrollo de RRHH.'),
(42, 2, 'ADMINISTRACIÓN DE RECURSOS HUMANOS', 3, '• Administrar los sistemas de información y archivo en soporte convencional e informático.\r\n• Realizar el apoyo administrativo a las tareas de selección, formación y desarrollo de recursos humanos.\r\n• Realizar la gestión y control administrativo de recursos humanos.\r\n• Manejar aplicaciones ofimáticas en la gestión de la información y la documentación\r\n\r\nSeleccionar, organizar y gestionar información y documentación sociolaboral relevante y pertinente para la eficacia de los procesos de Recursos Humanos.'),
(43, 2, 'SELECCIÓN Y DESARROLLO DE PERSONAL', 3, 'Seleccionar, interpretar e implementar la normativa laboral específica vinculada a la regulación de las relaciones de empleo y a las necesidades de gestión de recursos humanos.\r\nIdentificar, analizar y asesorar sobre los condicionantes de empleabilidad de los diferentes colectivos relacionados con la organización, y sobre las medidas más adecuadas en el marco de las políticas sociolaborales para favorecer su plena incorporación laboral.'),
(44, 2, 'DESARROLLO DE ESTRATEGIA DE COMUNICACIÓN', 3, 'Realizar la Planificación estratégica de la comunicación empresarial e institucional.\r\nEstablecer habilidades y criterios en la aplicación de las diferentes técnicas de comunicación empresarial.\r\nDesarrollar el Plan de Comunicación Interna\r\nDiseñar y poner en práctica las estrategias de comunicación externa: publicidad, relaciones públicas, patrocinio, marketing directo e interactivo, promoción y venta personal.\r\nDesarrollar estrategias de comunicación corporativa digital.\r\nPoseer y comprender conocimientos que aporten una base u oportunidad de ser originales en el desarrollo y/o aplicación de ideas.'),
(45, 2, 'GESTIÓN EFICIENTE DE LA COMUNICACIÓN', 3, 'Gestionar con eficiencia la comunicación de las organizaciones en general.\r\nGestionar la administración presupuestaria de un departamento de comunicación.\r\nDesarrollo Capacidad de gestión de los activos intangibles.\r\nDominio de las herramientas de comunicación '),
(46, 2, 'ANÁLISIS DE IMPACTO', 3, 'Diagnosticar  permanentemente  el  estado  de  las percepciones  de  su  mapa  de  públicos  relevantes\r\nAnalizar el impacto que los cambios de todo tipo  producidos  puedan  tener  sobre  su  capital  de  activos  intangibles\r\nRealización de Auditorías de investigación social y de comunicación\r\n'),
(47, 6, 'Frances', 4, NULL),
(48, 2, 'TECNICAS DE COMUNICACIÓN', 3, 'Control de la eficiencia y evaluación de la  eficacia del plan de estrategico\r\nConocimientos en diseño de estrategias de comunicación.\r\n Estrategias de comunicación de marketing integral (IMC) y nuevas tecnologías en la comunicación en las organizaciones\r\nIntegrar internet en la estrategia de marketing de la organización.\r\nConocer los procesos de comunicación en internet\r\n Desarrollar proyectos de comunicación de marketing \r\nDiseñar y desarrollar planes integrales de comunicación de marketing.'),
(49, 2, 'CONOCIMIENTO SOPORTES DIGITALES', 3, 'Conocimiento en las técnicas de diseño y desarrollo de soportes digitales como blogs y páginas web, entre otros.'),
(50, 2, 'GESTIÓN DE LA MARCA', 3, '\r\n Tomar decisiones de marca y gestionar la marca'),
(51, 2, 'COMUNICACIÓN SOCIAL', 3, 'Aplicar a proyectos empresariales las herramientas de comunicación social.'),
(52, 2, 'CONFECCIÓN Y PUBLICACIÓN DE PÁGINAS WEB', 3, 'Construir páginas web\r\n Integrar componentes software en páginas web\r\n Publicar páginas web'),
(53, 2, 'DESARROLLO DE APLICACIONES CON TECNOLOGÍAS WEB', 3, 'Desarrollar elementos software en el entorno cliente\r\nDesarrollar elementos software en el entorno servidor\r\nImplementar, verificar y documentar aplicaciones web en entornos internet, intranet y extranet'),
(54, 2, 'TRATAMIENTO Y MAQUETACIÓN DE ELEMENTOS GRÁFICOS EN PREIMPRESIÓN', 3, 'Operar en el proceso gráfico en condiciones de seguridad, calidad y productividad\r\nDigitalizar y realizar el tratamiento de imágenes mediante aplicaciones informáticas\r\nDigitalizar y tratar textos mediante aplicaciones informáticas\r\nRealizar la maquetación y/o compaginación de productos gráficos\r\nTratamiento de imágenes digitales'),
(55, 2, 'DISEÑO DE PRODUCTOS GRÁFICOS', 3, 'Diseño de productos gráficos\r\nTratar imágenes y crear elementos gráficos con los parámetros de gestión del color adecuados\r\nComponer elementos gráficos, imágenes y textos según la teoría de la arquitectura tipográfica y la maquetación\r\nPreparar y verificar artes finales para su distribución\r\nArquitectura tipográfica y maquetación'),
(56, 2, 'GESTIÓN DE SISTEMAS INFORMÁTICOS', 3, 'Administrar los dispositivos hardware del sistema\r\nInstalar, configurar y administrar el software de base y de aplicación del sistema\r\nSeguridad en equipos informáticos'),
(57, 2, 'SEGURIDAD INFORMÁTICA', 3, 'Auditar redes de comunicación y sistemas informáticos\r\nDetectar y responder ante incidentes de seguridad\r\nDiseñar e implementar sistemas seguros de acceso y transmisión de datos \r\nGestionar servicios en el sistema informático'),
(58, 2, 'SISTEMAS DE GESTIÓN DE INFORMACIÓN', 3, 'Consultar y extraer información de distintas plataformas de almacenamiento de datos.\r\nCrear y gestionar repositorios de contenidos.\r\nAdministrar el sistema de gestión de información.'),
(59, 2, 'ADMINISTRACIÓN Y PROGRAMACIÓN EN SISTEMAS DE PLANIFICACIÓN ', 3, 'ADMINISTRACIÓN Y PROGRAMACIÓN EN SISTEMAS DE PLANIFICACIÓN DE RECURSOS EMPRESARIALES Y DE GESTIÓN DE RELACIONES CON CLIENTES\r\nInstalar y configurar sistemas de planificación de recursos empresariales y de gestión de\r\nrelaciones con clientes\r\nAdministrar sistemas de planificación de recursos empresariales y de gestión de relaciones\r\ncon clientes\r\nRealizar y mantener componentes software en un sistema de planificación de recursos\r\nempresariales y de gestión de relaciones con clientes'),
(60, 2, 'PROGRAMACIÓN EN LENGUAJES ESTRUCTURADOS', 3, 'PROGRAMACIÓN EN LENGUAJES ESTRUCTURADOS DE APLICACIONES DE GESTIÓN\r\nDesarrollar componentes  Software en Lenguajes de programación estructurada.\r\nConfigurar y explotar sistemas informáticos\r\nProgramar bases de datos relacionales'),
(61, 2, 'PROGRAMACIÓN DE SISTEMAS INFORMÁTICOS', 3, 'PROGRAMACIÓN DE SISTEMAS INFORMÁTICOS\r\nGestionar servicios en el sistema informático\r\nCrear elementos software para la gestión del sistema y sus recursos\r\nDesarrollar elementos software con tecnologías de programación basada en componentes'),
(62, 2, 'GESTIÓN DE MARKETING Y COMUNICACIÓN', 3, 'Obtener y elaborar información para el sistema de información de mercados.\r\nAsistir en la definición y seguimiento de las políticas y plan de marketing.\r\nGestionar el lanzamiento e implantación de productos y servicios en el mercado.\r\nOrganizar y gestionar eventos de marketing y comunicación, siguiendo el protocolo y criterios establecidos.\r\nAsistir en la organización y seguimiento del plan de medios y soportes establecido.\r\nElaborar y difundir, en diferentes soportes, materiales, sencillos y autoeditables, publi-promocionales e informativos.\r\nComunicarse en inglés con un nivel de usuario independiente, en actividades comerciales'),
(63, 2, 'INVESTIGACIÓN DE MERCADOS.', 3, 'ASISTENCIA A LA INVESTIGACIÓN DE MERCADOS.\r\nPreparar la información e instrumentos necesarios para la investigación de mercados\r\nOrganizar y controlar la actividad de los encuestadores.\r\nRealizar encuestas y/o entrevistas utilizando las técnicas  y procedimientos establecidos. Colaborar en el análisis y obtención de conclusiones a partir de la investigación de mercados'),
(64, 2, 'DETECCION DE NECESIDADES DE MERCADO', 3, 'Analisar las necesidades de mercado\r\nDiseñar de nuevo producto relacionado con las necesidades y el objeto de la empresa\r\nDiseñar el \"plan de venta\" del producto\r\nDiseñar el plan de viabilidad del producto'),
(65, 2, 'PLANIFICACIÓN ESTRATÉGICA', 3, 'Capacidad de garantizar la viabilidad y sostenibilidad del negocio en el tiempo\r\nCapacidad de cerar y fijar el marco estratégico\r\nEficencia y eficacia en la gestión y planifcación\r\nCapacidad de desarrollar el talento y el liderazgo\r\nCapacidad de definición de politicas tanto estrategucas como de gestión'),
(66, 2, 'NUEVAS TECNOLOGIAS ', 3, 'Vigilar  la tecnología disponible en la organización \r\nDetección de necesidades tecnologicas\r\nIdentificación de nuevas oportunidades tecnologicas\r\nControl de la disponibilidad de información en la organización\r\nImplantación efectiva de los TICs\r\nAlto conocimiento de los sitemas de información y de redes\r\nAportar la visión técnica al plan estratégico de la organización\r\nVigilar la seguridad de la información\r\nLiderar la integración de la tecnologia con las personas, los procesos, y los proyectos'),
(67, 2, 'I+D+I', 3, 'Diseñar y realizar aplicaciones informáticas para mejorar la gestión\r\nDesarrollar la visión tecnológica para los negocios\r\nDesarrollar la tecnologia del futuro\r\nAportar soluciones innovadoras a los proyectos\r\nCreación de oportunidades de negocio'),
(68, 2, 'CAPACIDAD DE IDENTIFICACIÓN NUEVOS PROYECTOS', 3, 'Identificación de convocatorias nacionales e internacionales que se adapten a los objetivos del departamento\r\nEvaluación de los proyectos'),
(69, 2, 'CAPACIDAD DE PREPARACIÓN DOCUMENTACIÓN TÉCNICA ', 3, 'Capacidad de Preparación documentación técnica de proyectos de licitaciones presentadas y su justificación'),
(70, 2, 'CAPACIDAD DE REALIZACIÓN DE LAS TAREAS ENCOMENDADAS', 3, 'Capacidad de realización de las tareas encomendadas por el tencico en tiempo y forma'),
(71, 2, 'REALIZACIÓN DE AUDITORIAS', 3, ' Realizar de auditoria de proyectos, de proveedores, internas... '),
(72, 2, 'CAPACIDAD DE ANALISIS INICIAL DE PROVEEDORES', 3, 'Controlar la capacidad del proveedor / colaborador '),
(73, 2, 'APOYO PLAN ESTRATÉGICO', 3, '• Realizar Informe ventas por departamentos\r\n• Controlar de los Indicadores evolución anual\r\n• Controlar los planes de calidad'),
(74, 2, 'MANTENIMIENTO REGISTROS ', 3, 'Mantenimiento de la documentación y los registros de calidad correspondientes a los proyectos, al sistema de gestión o genéricas de la organización. \r\nElaborar/modificar / revisar la documentación '),
(75, 2, 'CAPACIDAD DE CONTROL DE PROVEEDORES', 3, 'Controlar la conformidad del producto o servicio suministrado por el proveedor.\r\nAnalizar el cumplimiento y tendencia del proveedor en función de su actividad en relación con la organización, o solo con un proyecto ');

-- --------------------------------------------------------

--
-- Table structure for table `competencia_departamento`
--

CREATE TABLE `competencia_departamento` (
  `id_competencia` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `competencia_departamento`
--

INSERT INTO `competencia_departamento` (`id_competencia`, `id_departamento`) VALUES
(8, 1),
(8, 10),
(8, 5),
(8, 3),
(8, 2),
(8, 7),
(8, 6),
(8, 9),
(8, 8),
(8, 4),
(14, 10),
(14, 5),
(14, 3),
(14, 2),
(14, 1),
(14, 7),
(14, 6),
(14, 9),
(14, 8),
(14, 4),
(7, 10),
(7, 5),
(7, 3),
(7, 2),
(7, 1),
(7, 7),
(7, 6),
(7, 9),
(7, 8),
(7, 4),
(5, 10),
(5, 5),
(5, 3),
(5, 2),
(5, 1),
(5, 7),
(5, 6),
(5, 9),
(5, 8),
(5, 4),
(1, 4),
(1, 8),
(1, 9),
(1, 6),
(1, 7),
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 10),
(9, 10),
(9, 5),
(9, 3),
(9, 2),
(9, 1),
(9, 7),
(9, 6),
(9, 9),
(9, 8),
(9, 4),
(4, 10),
(4, 5),
(4, 3),
(4, 2),
(4, 1),
(4, 7),
(4, 6),
(4, 9),
(4, 8),
(4, 4),
(3, 4),
(3, 8),
(3, 9),
(3, 6),
(3, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 10),
(6, 10),
(6, 5),
(6, 3),
(6, 2),
(6, 1),
(6, 7),
(6, 6),
(6, 9),
(6, 8),
(6, 4),
(35, 1),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(20, 8),
(20, 9),
(20, 6),
(20, 7),
(20, 1),
(20, 2),
(20, 3),
(20, 5),
(20, 10),
(10, 10),
(10, 5),
(10, 3),
(10, 2),
(10, 1),
(10, 7),
(10, 6),
(10, 9),
(10, 8),
(10, 4),
(18, 10),
(18, 5),
(18, 3),
(18, 2),
(18, 1),
(18, 7),
(18, 6),
(18, 9),
(18, 8),
(18, 4),
(34, 4),
(34, 8),
(34, 9),
(34, 6),
(34, 7),
(34, 1),
(34, 2),
(34, 3),
(34, 5),
(34, 10),
(24, 7),
(27, 4),
(27, 8),
(27, 9),
(27, 6),
(27, 7),
(27, 2),
(27, 3),
(27, 5),
(27, 10),
(24, 2),
(23, 4),
(23, 8),
(23, 9),
(23, 6),
(23, 7),
(23, 2),
(23, 3),
(23, 5),
(23, 10),
(24, 3),
(28, 4),
(28, 8),
(28, 9),
(28, 6),
(28, 7),
(28, 2),
(28, 3),
(28, 5),
(28, 10),
(24, 5),
(24, 10),
(26, 4),
(26, 8),
(26, 9),
(26, 6),
(26, 2),
(26, 3),
(26, 5),
(26, 10),
(32, 10),
(32, 5),
(32, 3),
(32, 2),
(32, 7),
(32, 6),
(32, 9),
(32, 8),
(32, 4),
(24, 6),
(24, 9),
(24, 8),
(31, 10),
(31, 5),
(31, 3),
(31, 2),
(31, 7),
(31, 6),
(31, 9),
(31, 8),
(31, 4),
(30, 10),
(30, 5),
(30, 3),
(30, 2),
(30, 7),
(30, 6),
(30, 9),
(30, 8),
(30, 4),
(25, 10),
(25, 5),
(25, 3),
(25, 2),
(25, 7),
(25, 6),
(25, 9),
(25, 8),
(29, 10),
(29, 5),
(29, 2),
(29, 7),
(29, 6),
(29, 9),
(29, 8),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 5),
(45, 5),
(46, 5),
(47, 3),
(47, 5),
(47, 10),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(53, 6),
(61, 6),
(62, 7),
(63, 7),
(64, 9),
(16, 10),
(16, 5),
(16, 3),
(16, 2),
(16, 1),
(16, 7),
(16, 6),
(16, 9),
(16, 8),
(16, 4),
(20, 4),
(21, 10),
(21, 5),
(21, 3),
(21, 2),
(21, 1),
(21, 7),
(21, 6),
(21, 9),
(21, 8),
(21, 4),
(17, 10),
(17, 5),
(17, 3),
(17, 2),
(17, 1),
(17, 7),
(17, 6),
(17, 9),
(17, 8),
(17, 4),
(33, 10),
(33, 5),
(33, 3),
(33, 2),
(33, 1),
(33, 7),
(33, 6),
(33, 9),
(33, 8),
(33, 4),
(22, 10),
(22, 5),
(22, 3),
(22, 2),
(22, 1),
(22, 7),
(22, 6),
(22, 9),
(22, 8),
(22, 4),
(19, 10),
(19, 5),
(19, 3),
(19, 2),
(19, 1),
(19, 7),
(19, 6),
(19, 9),
(19, 8),
(19, 4),
(15, 10),
(15, 5),
(15, 3),
(15, 2),
(15, 1),
(15, 7),
(15, 6),
(15, 9),
(15, 8),
(15, 4),
(47, 2),
(47, 1),
(47, 7),
(47, 6),
(47, 9),
(47, 8),
(47, 4),
(65, 1),
(66, 6),
(67, 6),
(68, 8),
(69, 8),
(70, 10),
(70, 5),
(70, 3),
(70, 2),
(70, 1),
(70, 7),
(70, 6),
(70, 9),
(70, 8),
(70, 4),
(71, 10),
(72, 10),
(73, 10),
(74, 10),
(75, 10);

-- --------------------------------------------------------

--
-- Table structure for table `comunidad_autonoma`
--

CREATE TABLE `comunidad_autonoma` (
  `id_comunidad_autonoma` int(11) NOT NULL,
  `comunidad_autonoma` varchar(100) NOT NULL,
  `id_pais` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comunidad_autonoma`
--

INSERT INTO `comunidad_autonoma` (`id_comunidad_autonoma`, `comunidad_autonoma`, `id_pais`) VALUES
(1, 'Andalucía', 71),
(2, 'Aragón', 71),
(3, 'Baleares', 71),
(4, 'Canarias', 71),
(5, 'Cantabria', 71),
(6, 'Castilla-La Mancha', 71),
(7, 'Castilla León', 71),
(8, 'Cataluña', 71),
(9, 'Ceuta', 71),
(10, 'Comunidad Valenciana', 71),
(11, 'Comunidad de Madrid', 71),
(12, 'Extremadura', 71),
(13, 'Galicia', 71),
(14, 'La Rioja', 71),
(15, 'Melilla', 71),
(16, 'Navarra', 71),
(17, 'País Vasco', 71),
(18, 'Principado de Asturias', 71),
(19, 'Región de Murcia', 71);

-- --------------------------------------------------------

--
-- Table structure for table `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `contrato` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `contrato`) VALUES
(1, 'Indefinido'),
(2, 'Obra y servicio'),
(3, 'Temporal');

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`) VALUES
(1, 'Gerencia'),
(2, 'Formación'),
(3, 'Financiero'),
(4, 'RRHH'),
(5, 'Comunicación'),
(6, 'Nuevas Tecnologías'),
(7, 'Marketing'),
(8, 'Proyectos'),
(9, 'Nuevos Productos'),
(10, 'Calidad');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nif` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `discapacitado` varchar(1) DEFAULT NULL,
  `estudio` int(11) DEFAULT NULL,
  `nss` varchar(25) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `comunidad_autonoma` int(11) DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `movil` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `otro_email` varchar(150) DEFAULT NULL,
  `antiguedad` varchar(200) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `dni` varchar(250) DEFAULT NULL,
  `ss` varchar(250) DEFAULT NULL,
  `cv` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `id_user`, `nif`, `nombre`, `apellido1`, `apellido2`, `fecha_nacimiento`, `nacionalidad`, `sexo`, `estado_civil`, `discapacitado`, `estudio`, `nss`, `direccion`, `pais`, `comunidad_autonoma`, `provincia`, `localidad`, `cp`, `telefono`, `movil`, `email`, `otro_email`, `antiguedad`, `linkedin`, `facebook`, `twitter`, `instagram`, `dni`, `ss`, `cv`, `foto`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 1, '78971064N', 'Jorge', 'Moreno', 'García', '2014-10-28', 'Española', 'H', 3, 'N', 3, '291027653585', 'C/ Edoras de Rohan 16, 2º I', 71, 1, 29, 'Coín', '29100', NULL, '637542680', 'jmoreno@mainfor.es', 'jorgemorenogarcia28@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-04', '2018-10-25', 1, 1),
(2, 2, '', 'mjmorales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mjmorales@mainfor.es', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-10-01', '2016-05-27', 1, 1),
(3, 3, '', 'hsosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hsosa@mainfor.es', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-10-01', '2014-10-01', 1, 1),
(4, 4, '', 'lruizg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lruizg@mainfor.es', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-10-01', '2018-11-20', 2, 1),
(5, 5, '', 'teo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tjinga@gothicaconsulting.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-07', '2016-04-20', 1, 1),
(6, 6, '76639842R', 'Rafael', 'Fernández ', 'Mena', '1993-01-19', 'Española', 'H', 3, 'N', 7, '291035742072', 'C/Joselito, 3 ', 71, 1, 29, 'Málaga', '29004', NULL, '645562058', 'rfernandez@mainfor.edu.es', 'rfernandezm@mainfor.edu.es', NULL, 'https://www.linkedin.com/in/rafael-fernández-mena-b54476121/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-29', '2019-01-28', 2, 6),
(7, 7, '', 'evillalon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'evillalon@mainfor.edu.es', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-11', '2017-01-11', 1, 1),
(8, 8, '03875101S', 'LAURA', 'MARTÍN', 'GARCÍA-FOGEDA', '2018-10-26', 'España', 'M', 2, 'N', 5, '451003133236', 'CALLE CONCHA ESPINA, 8- PORTAL 3 1ªA., PORTAL 3- 1º A', 71, 11, 28, 'GETAFE', '28903', '666408434', '672643979', 'lmarting@mainfor.edu.es', 'lauramgf@hotmail.com', '15/05/2015', 'https://www.linkedin.com/in/laura-mart%C3%ADn-garc%C3%ADa-fogeda-312a3b13/', NULL, '@lauramgf', 'LAURA MARTÍN GARCÍA-FOGEDA', 'DNI_.pdf', NULL, NULL, 'Foto_.jpg', '2018-10-24', '2018-10-25', 1, 8),
(14, 14, '33378457Y', 'LAURA', 'LOPEZ', 'GÓMEZ', '2018-11-20', 'España', 'M', 2, 'N', 8, '451003133236', 'AVDA. ARROYO DE LOS ANGELES, 10-4ºB', 71, NULL, NULL, 'Málaga', '29009', '617268297', '666408434', 'lmarting@mainfor.es', 'lauramgf@hotmail.com', NULL, 'https://www.linkedin.com/in/laura-mart%C3%ADn-garc%C3%ADa-fogeda-312a3b13/', NULL, '@lauramgf', 'lauramgf', 'DNI_.pdf', 'SS_.pdf', 'CV_.pdf', 'Foto_33378457Y.jpg', '2018-11-20', '2018-11-20', 8, 14),
(17, 17, NULL, 'lmarting3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lauramgf@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20', '2018-11-20', 8, 8),
(18, 18, NULL, 'rgomez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rgomez@grupomainjobs.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-08', '2019-05-08', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employees_competition`
--

CREATE TABLE `employees_competition` (
  `id_empleado` int(11) NOT NULL,
  `id_subcompetencia` int(11) NOT NULL,
  `id_tipo_nivel` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_competition`
--

INSERT INTO `employees_competition` (`id_empleado`, `id_subcompetencia`, `id_tipo_nivel`) VALUES
(1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `employees_contact`
--

CREATE TABLE `employees_contact` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `relacion` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `comunidad_autonoma` int(11) DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `movil` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_contact`
--

INSERT INTO `employees_contact` (`id`, `id_empleado`, `nombre`, `apellido1`, `apellido2`, `relacion`, `direccion`, `pais`, `comunidad_autonoma`, `provincia`, `localidad`, `cp`, `telefono`, `movil`, `email`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 1, 'Jorge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '637542680', NULL, '2018-10-25', NULL, 1, NULL),
(2, 14, 'LAURA', 'LOPEZ', 'GOMEZ', NULL, 'AVDA. ARROYO DE LOS ANGELES, 10-4ºB', 71, 1, 29, 'Málaga', '29009', '666408434', '666408434', 'lauramgf@hotmail.com', '2018-11-20', NULL, 14, NULL),
(3, 17, 'Laura ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '654654654', NULL, '2019-01-08', NULL, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees_curriculum`
--

CREATE TABLE `employees_curriculum` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_formacion` int(11) NOT NULL COMMENT 'ver tabla formacion',
  `titulacion` int(11) DEFAULT NULL,
  `id_modalidad` int(11) DEFAULT NULL COMMENT 'ver tabla modalidad',
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `duracion` decimal(15,2) DEFAULT NULL COMMENT 'Horas de duración',
  `cualificacion` varchar(200) DEFAULT NULL,
  `centro` varchar(200) DEFAULT NULL,
  `diploma` varchar(250) DEFAULT NULL,
  `form_reci_empresa` tinyint(1) DEFAULT 2 COMMENT '1:Formación recibida estando en la empresa; 2: Formación recibida estando en otra empresa;',
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_curriculum`
--

INSERT INTO `employees_curriculum` (`id`, `id_empleado`, `id_formacion`, `titulacion`, `id_modalidad`, `inicio`, `fin`, `duracion`, `cualificacion`, `centro`, `diploma`, `form_reci_empresa`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 8, 1, 9, 2, '2018-05-15', '2018-10-27', 600.00, '10', 'adams', 'Diploma_2018_10_25_135851.docx', 1, '2018-10-25', '2018-10-29', 8, 8),
(2, 8, 2, NULL, 2, '2015-10-05', '2018-10-31', 600.00, '10', 'adams', 'Diploma_2018_10_29_120158.pdf', 1, '2018-10-29', '2018-10-29', 8, 8),
(3, 14, 2, NULL, 1, '2015-10-05', '2018-10-31', 600.00, '10', 'adams', 'Diploma_2018_11_20_133405.pdf', 1, '2018-11-20', '2018-11-20', 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `employees_experience`
--

CREATE TABLE `employees_experience` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `direccion_empresa` varchar(200) DEFAULT NULL,
  `tipo_empresa` varchar(200) DEFAULT NULL,
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `puesto` varchar(200) DEFAULT NULL,
  `funciones` text DEFAULT NULL,
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_experience`
--

INSERT INTO `employees_experience` (`id`, `id_empleado`, `empresa`, `direccion_empresa`, `tipo_empresa`, `inicio`, `fin`, `puesto`, `funciones`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 8, 'Mainfor', 'AVDA. JORGE LUIS BORGES, 15', NULL, '2015-10-05', NULL, 'MANDO INTERMEDIO', 'PLANIFICACIÓN PROYECTOS, SEGUIMIENTO CUENTA DE RESULTADOS', '2018-10-25', '2018-10-25', 8, 8),
(2, 8, 'Novasoft', 'Calle Marie Curie, 15 Málaga', 'Tecnológica', '2018-10-22', '2018-10-31', 'Directora área', 'Planificar, gestionar y dirigir proyectos', '2018-10-29', '2018-10-29', 8, 8),
(3, 14, 'Novasoft', 'C/ marie curie, 15', 'Tecnológica', '2015-10-05', '2018-10-31', 'Directora área', ' ldfj aldjkald fjkaldkjaldfjkaldfjkadlfkjadlfjkañfljkkfdajfj lkjdk', '2018-11-20', '2018-11-20', 14, 14),
(4, 14, 'MPDL', 'CARRETERÍA, 15', 'ONGD', '2013-11-04', '2018-10-31', 'técnico', 'GESTIÓN DE PROYECTOS SOBRE EDUCACIÓN PARA EL DESARROLLO', '2018-11-20', '2018-11-20', 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `employees_salary`
--

CREATE TABLE `employees_salary` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `salario_bruto` decimal(15,2) DEFAULT NULL,
  `incentivo` decimal(15,2) DEFAULT NULL,
  `dieta` decimal(15,2) DEFAULT NULL,
  `anticipo` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `bonificacion` decimal(15,2) DEFAULT NULL,
  `irpf_porcentaje` decimal(15,2) DEFAULT NULL,
  `irpf_cantidad` decimal(15,2) DEFAULT NULL,
  `ss` decimal(15,2) DEFAULT NULL,
  `coste_empresa` decimal(15,2) DEFAULT NULL,
  `nomina` varchar(250) DEFAULT NULL,
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_salary`
--

INSERT INTO `employees_salary` (`id`, `id_empleado`, `fecha`, `salario_bruto`, `incentivo`, `dieta`, `anticipo`, `total`, `bonificacion`, `irpf_porcentaje`, `irpf_cantidad`, `ss`, `coste_empresa`, `nomina`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 1, '2014-10-31', 1000.00, NULL, NULL, NULL, 1000.00, NULL, NULL, NULL, 500.00, 1400.00, 'Nomina_2014_10_01_173528.pdf', '2014-10-01', '2016-08-05', 2, 1),
(2, 1, '2014-10-31', 500.00, NULL, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, 500.00, 'Nomina_2014_10_01_173545.pdf', '2014-10-01', '2014-10-01', 2, 2),
(3, 8, '2017-07-13', 30000.00, 800.00, NULL, NULL, 30800.00, NULL, 17.00, NULL, NULL, 30800.00, NULL, '2018-10-25', '2018-10-25', 8, 8),
(4, 6, '2018-12-31', 1000.00, NULL, NULL, NULL, 1000.00, NULL, 10.00, 100.00, 320.10, 1320.10, NULL, '2019-01-28', '2019-01-28', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employees_trainingplan`
--

CREATE TABLE `employees_trainingplan` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_formacion` int(11) NOT NULL COMMENT 'ver tabla formacion',
  `titulacion` int(11) DEFAULT NULL,
  `id_modalidad` int(11) DEFAULT NULL COMMENT 'ver tabla modalidad',
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `duracion` decimal(15,2) DEFAULT NULL COMMENT 'Horas de duración',
  `cualificacion` varchar(200) DEFAULT NULL,
  `centro` varchar(200) DEFAULT NULL,
  `id_horario` int(11) DEFAULT NULL COMMENT 'ver tabla horario',
  `estado` tinyint(1) DEFAULT 2 COMMENT '1:Autorizado; 2: Pendiente;',
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_trainingplan`
--

INSERT INTO `employees_trainingplan` (`id`, `id_empleado`, `id_formacion`, `titulacion`, `id_modalidad`, `inicio`, `fin`, `duracion`, `cualificacion`, `centro`, `id_horario`, `estado`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 5, 3, NULL, 1, '2016-04-04', '2016-04-14', 6.00, 'a', 'fff', 2, 2, '2016-04-20', '2016-04-20', 5, 5),
(2, 6, 3, NULL, NULL, '2019-01-01', NULL, NULL, 'Tecnico', 'Mainfor', 3, 2, '2019-01-28', '2019-01-28', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employees_trainingplan_subcompetencia`
--

CREATE TABLE `employees_trainingplan_subcompetencia` (
  `id_employees_trainingplan` int(11) NOT NULL,
  `id_subcompetencia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_trainingplan_subcompetencia`
--

INSERT INTO `employees_trainingplan_subcompetencia` (`id_employees_trainingplan`, `id_subcompetencia`) VALUES
(2, 67),
(2, 73),
(2, 123),
(2, 79),
(2, 32);

-- --------------------------------------------------------

--
-- Table structure for table `employees_work`
--

CREATE TABLE `employees_work` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `linea` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `puesto` int(11) DEFAULT NULL,
  `contrato` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `jornada_semanal` varchar(200) DEFAULT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `salario_bruto` decimal(15,2) DEFAULT NULL,
  `categoria_profesional` int(11) DEFAULT NULL,
  `depende_de` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `edit_date` date DEFAULT NULL,
  `add_user` int(11) NOT NULL,
  `edit_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_work`
--

INSERT INTO `employees_work` (`id`, `id_empleado`, `linea`, `departamento`, `puesto`, `contrato`, `inicio`, `fin`, `jornada_semanal`, `horario`, `salario_bruto`, `categoria_profesional`, `depende_de`, `add_date`, `edit_date`, `add_user`, `edit_user`) VALUES
(1, 1, 2, 1, 2, 1, '2018-01-04', NULL, '39 horas', '8:30 - 15:30', 1000.00, 1, 1, '2018-01-04', '2018-05-03', 1, 1),
(2, 4, 1, 10, 3, 1, '2018-05-01', NULL, '39 horas', '8:30 - 15:30', 1000.00, 2, 1, '2018-05-03', '2018-05-03', 1, 1),
(3, 2, 3, 3, 3, 1, '2018-05-02', NULL, '39 horas', '8:30 - 15:30', 1000.00, 1, 1, '2018-05-03', '2018-05-03', 1, 2),
(4, 3, 1, 10, 3, 1, '2018-05-01', NULL, '39 horas', '8:30 - 15:30', 1000.00, 2, 2, '2018-05-03', '2018-05-03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees_work_doc`
--

CREATE TABLE `employees_work_doc` (
  `id` int(11) NOT NULL,
  `id_empleado_work` int(11) NOT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `documento` varchar(250) DEFAULT NULL,
  `add_date` date NOT NULL,
  `add_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enlace`
--

CREATE TABLE `enlace` (
  `id_enlace` int(11) NOT NULL,
  `enlace` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Active;2:Desactive;'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL,
  `estado_civil` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estado_civil`
--

INSERT INTO `estado_civil` (`id_estado_civil`, `estado_civil`) VALUES
(1, 'Casado/a'),
(2, 'Divorciado/a'),
(3, 'Soltero/a'),
(4, 'Viudo/a');

-- --------------------------------------------------------

--
-- Table structure for table `estudio`
--

CREATE TABLE `estudio` (
  `id_estudio` int(11) NOT NULL,
  `estudio` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estudio`
--

INSERT INTO `estudio` (`id_estudio`, `estudio`) VALUES
(1, 'Sin Titulación'),
(2, 'ESO/Graduado Escolar'),
(3, 'Bachiller'),
(4, 'Técnico FP grado medio/FPI'),
(5, 'Técnico FP grado medio/FPII'),
(6, 'Diplomado (E. Universitaria 1er. Ciclo)'),
(7, 'Licenciado (E. Universitaria 2º Ciclo)'),
(8, 'Doctor'),
(9, 'Otra titulación');

-- --------------------------------------------------------

--
-- Table structure for table `formacion`
--

CREATE TABLE `formacion` (
  `id_formacion` int(11) NOT NULL,
  `formacion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formacion`
--

INSERT INTO `formacion` (`id_formacion`, `formacion`) VALUES
(1, 'Titulación'),
(2, 'Certificado'),
(3, 'Curso');

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `horario` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `horario`
--

INSERT INTO `horario` (`id_horario`, `horario`) VALUES
(1, 'Ambas'),
(2, 'Dentro de la jornada laboral'),
(3, 'Fuera de la jornada laboral');

-- --------------------------------------------------------

--
-- Table structure for table `linea`
--

CREATE TABLE `linea` (
  `id_linea` int(11) NOT NULL,
  `linea` varchar(100) NOT NULL,
  `nivel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `linea`
--

INSERT INTO `linea` (`id_linea`, `linea`, `nivel`) VALUES
(1, 'CP', ''),
(2, 'FE', ''),
(3, 'I+D+I', ''),
(4, 'RRHH', '');

-- --------------------------------------------------------

--
-- Table structure for table `modalidad`
--

CREATE TABLE `modalidad` (
  `id_modalidad` int(11) NOT NULL,
  `modalidad` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalidad`
--

INSERT INTO `modalidad` (`id_modalidad`, `modalidad`) VALUES
(1, 'A Distancia'),
(2, 'Presencial'),
(3, 'Presencial + Teleformación'),
(4, 'Semipresencial'),
(5, 'Teleformación');

-- --------------------------------------------------------

--
-- Table structure for table `modulefeatures`
--

CREATE TABLE `modulefeatures` (
  `id_modulefeatures` int(11) NOT NULL,
  `features_name` varchar(50) NOT NULL,
  `features_value` varchar(150) NOT NULL,
  `features_description` varchar(150) NOT NULL,
  `id_modules` int(11) NOT NULL,
  `iswriteaccess` tinyint(1) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modulefeatures`
--

INSERT INTO `modulefeatures` (`id_modulefeatures`, `features_name`, `features_value`, `features_description`, `id_modules`, `iswriteaccess`, `create_date`) VALUES
(21, 'Informes', '/modules/report/listreport.php', 'Si lo marca podrá ver esta opción en el menú.', 6, 1, '2016-07-13'),
(2, 'Empleados', '/modules/employee/listemployee.php', 'Si lo marca podrá ver esta opción en el menú.', 2, 1, '2014-05-27'),
(3, 'Departamentos', '/modules/department/listdepartment.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-05-27'),
(4, 'Líneas', '/modules/line/listline.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-05-27'),
(5, 'Puestos', '/modules/post/listpost.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-05-27'),
(6, 'Contratos', '/modules/contract/listcontract.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-05-27'),
(7, 'Roles', '/modules/rol/listrol.php', 'Si lo marca podrá ver esta opción en el menú.', 3, 1, '2014-05-27'),
(8, 'Usuarios', '/modules/user/listuser.php', 'Si lo marca podrá ver esta opción en el menú.', 3, 1, '2014-05-27'),
(9, 'Competencias', '/modules/competition/listcompetition.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-05-27'),
(10, 'Categorías profesionales', '/modules/categoryprofessional/listcategoryprofessional.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-06-24'),
(11, 'Estados civiles', '/modules/civilstatus/listcivilstatus.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-06-24'),
(12, 'Estudios', '/modules/study/liststudy.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-06-24'),
(13, 'Comunidades autónomas', '/modules/state/liststate.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-06-24'),
(14, 'Provincias', '/modules/city/listcity.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-06-24'),
(15, 'Tipos competencias', '/modules/typecompetition/listtypecompetition.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-07-10'),
(16, 'Modalidades', '/modules/modality/listmodality.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-07-10'),
(17, 'Inicio', '/modules/inicio/inicio.php', 'Si lo marca podrá ver esta opción en el menú.', 5, 1, '2014-07-11'),
(18, 'Enlaces', '/modules/link/listlink.php', 'Si lo marca podrá ver esta opción en el menú.', 3, 1, '2014-07-15'),
(19, 'Notificaciones', '/modules/notification/listnotification.php', 'Si lo marca podrá ver esta opción en el menú.', 3, 1, '2014-07-15'),
(20, 'Subcompetencias', '/modules/subcompetition/listsubcompetition.php', 'Si lo marca podrá ver esta opción en el menú.', 4, 1, '2014-08-31'),
(1, 'Organigrama', '/modules/organization/organization.php', 'Si lo marca podrá ver esta opción en el menú.', 1, 1, '2014-05-27'),
(22, 'Organigrama puestos', '/modules/organization/post.php', 'Si lo marca podrá ver esta opción en el menú.', 1, 1, '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id_modules` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_value` varchar(50) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `create_date` date NOT NULL,
  `orderby` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id_modules`, `module_name`, `module_value`, `isactive`, `create_date`, `orderby`) VALUES
(1, 'Organigrama', 'organization', 1, '2014-05-27', 1),
(2, 'Empleados', 'employee', 1, '2014-05-27', 2),
(3, 'Administración', 'report', 1, '2014-05-27', 3),
(4, 'Configuración', 'setting', 1, '2014-05-27', 4),
(5, 'Inicio', 'home', 1, '2014-07-11', 0),
(6, 'Informes', 'report', 1, '2016-07-13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

CREATE TABLE `notificacion` (
  `id_notificacion` int(11) NOT NULL,
  `send_user` int(11) DEFAULT NULL,
  `notificacion` varchar(100) NOT NULL,
  `mensaje` text DEFAULT NULL,
  `add_date` date NOT NULL,
  `add_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id_pais`, `pais`) VALUES
(1, 'Afganistán'),
(2, 'Akrotiri'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguila'),
(8, 'Antártida'),
(9, 'Antigua y Barbuda'),
(10, 'Antillas Neerlandesas'),
(11, 'Arabia Saudí'),
(12, 'Arctic Ocean'),
(13, 'Argelia'),
(14, 'Argentina'),
(15, 'Armenia'),
(16, 'Aruba'),
(17, 'Ashmore andCartier Islands'),
(18, 'Atlantic Ocean'),
(19, 'Australia'),
(20, 'Austria'),
(21, 'Azerbaiyán'),
(22, 'Bahamas'),
(23, 'Bahráin'),
(24, 'Bangladesh'),
(25, 'Barbados'),
(26, 'Bélgica'),
(27, 'Belice'),
(28, 'Benín'),
(29, 'Bermudas'),
(30, 'Bielorrusia'),
(31, 'Birmania Myanmar'),
(32, 'Bolivia'),
(33, 'Bosnia y Hercegovina'),
(34, 'Botsuana'),
(35, 'Brasil'),
(36, 'Brunéi'),
(37, 'Bulgaria'),
(38, 'Burkina Faso'),
(39, 'Burundi'),
(40, 'Bután'),
(41, 'Cabo Verde'),
(42, 'Camboya'),
(43, 'Camerún'),
(44, 'Canadá'),
(45, 'Chad'),
(46, 'Chile'),
(47, 'China'),
(48, 'Chipre'),
(49, 'Clipperton Island'),
(50, 'Colombia'),
(51, 'Comoras'),
(52, 'Congo'),
(53, 'Coral Sea Islands'),
(54, 'Corea del Norte'),
(55, 'Corea del Sur'),
(56, 'Costa de Marfil'),
(57, 'Costa Rica'),
(58, 'Croacia'),
(59, 'Cuba'),
(60, 'Dhekelia'),
(61, 'Dinamarca'),
(62, 'Dominica'),
(63, 'Ecuador'),
(64, 'Egipto'),
(65, 'El Salvador'),
(66, 'El Vaticano'),
(67, 'Emiratos Árabes Unidos'),
(68, 'Eritrea'),
(69, 'Eslovaquia'),
(70, 'Eslovenia'),
(71, 'España'),
(72, 'Estados Unidos'),
(73, 'Estonia'),
(74, 'Etiopía'),
(75, 'Filipinas'),
(76, 'Finlandia'),
(77, 'Fiyi'),
(78, 'Francia'),
(79, 'Gabón'),
(80, 'Gambia'),
(81, 'Gaza Strip'),
(82, 'Georgia'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Granada'),
(86, 'Grecia'),
(87, 'Groenlandia'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guernsey'),
(91, 'Guinea'),
(92, 'Guinea Ecuatorial'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haití'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungría'),
(99, 'India'),
(100, 'Indian Ocean'),
(101, 'Indonesia'),
(102, 'Irán'),
(103, 'Iraq'),
(104, 'Irlanda'),
(105, 'Isla Bouvet'),
(106, 'Isla Christmas'),
(107, 'Isla Norfolk'),
(108, 'Islandia'),
(109, 'Islas Caimán'),
(110, 'Islas Cocos'),
(111, 'Islas Cook'),
(112, 'Islas Feroe'),
(113, 'Islas Georgia del Sur y Sandwich del Sur'),
(114, 'Islas Heard y McDonald'),
(115, 'Islas Malvinas'),
(116, 'Islas Marianas del Norte'),
(117, 'IslasMarshall'),
(118, 'Islas Pitcairn'),
(119, 'Islas Salomón'),
(120, 'Islas Turcas y Caicos'),
(121, 'Islas Vírgenes Americanas'),
(122, 'Islas Vírgenes Británicas'),
(123, 'Israel'),
(124, 'Italia'),
(125, 'Jamaica'),
(126, 'Jan Mayen'),
(127, 'Japón'),
(128, 'Jersey'),
(129, 'Jordania'),
(130, 'Kazajistán'),
(131, 'Kenia'),
(132, 'Kirguizistán'),
(133, 'Kiribati'),
(134, 'Kuwait'),
(135, 'Laos'),
(136, 'Lesoto'),
(137, 'Letonia'),
(138, 'Líbano'),
(139, 'Liberia'),
(140, 'Libia'),
(141, 'Liechtenstein'),
(142, 'Lituania'),
(143, 'Luxemburgo'),
(144, 'Macao'),
(145, 'Macedonia'),
(146, 'Madagascar'),
(147, 'Malasia'),
(148, 'Malaui'),
(149, 'Maldivas'),
(150, 'Malí'),
(151, 'Malta'),
(152, 'Man, Isle of'),
(153, 'Marruecos'),
(154, 'Mauricio'),
(155, 'Mauritania'),
(156, 'Mayotte'),
(157, 'México'),
(158, 'Micronesia'),
(159, 'Moldavia'),
(160, 'Mónaco'),
(161, 'Mongolia'),
(162, 'Montserrat'),
(163, 'Mozambique'),
(164, 'Namibia'),
(165, 'Nauru'),
(166, 'Navassa Island'),
(167, 'Nepal'),
(168, 'Nicaragua'),
(169, 'Níger'),
(170, 'Nigeria'),
(171, 'Niue'),
(172, 'Noruega'),
(173, 'Nueva Caledonia'),
(174, 'Nueva Zelanda'),
(175, 'Omán'),
(176, 'Pacific Ocean'),
(177, 'Países Bajos'),
(178, 'Pakistán'),
(179, 'Palaos'),
(180, 'Panamá'),
(181, 'Papúa-Nueva Guinea'),
(182, 'Paracel Islands'),
(183, 'Paraguay'),
(184, 'Perú'),
(185, 'Polinesia Francesa'),
(186, 'Polonia'),
(187, 'Portugal'),
(188, 'Puerto Rico'),
(189, 'Qatar'),
(190, 'Reino Unido'),
(191, 'República Centroafricana'),
(192, 'República Checa'),
(193, 'República Democrática del Congo'),
(194, 'República Dominicana'),
(195, 'Ruanda'),
(196, 'Rumania'),
(197, 'Rusia'),
(198, 'Sáhara Occidental'),
(199, 'Samoa'),
(200, 'Samoa Americana'),
(201, 'San Cristóbal y Nieves'),
(202, 'San Marino'),
(203, 'San Pedro y Miquelón'),
(204, 'San Vicente y las Granadinas'),
(205, 'Santa Helena'),
(206, 'Santa Lucía'),
(207, 'Santo Tomé y Príncipe'),
(208, 'Senegal'),
(209, 'Seychelles'),
(210, 'Sierra Leona'),
(211, 'Singapur'),
(212, 'Siria'),
(213, 'Somalia'),
(214, 'Southern Ocean'),
(215, 'Spratly Islands'),
(216, 'Sri Lanka'),
(217, 'Suazilandia'),
(218, 'Sudáfrica'),
(219, 'Sudán'),
(220, 'Suecia'),
(221, 'Suiza'),
(222, 'Surinam'),
(223, 'Svalbard y Jan Mayen'),
(224, 'Tailandia'),
(225, 'Taiwán'),
(226, 'Tanzania'),
(227, 'Tayikistán'),
(228, 'TerritorioBritánicodel Océano Indico'),
(229, 'Territorios Australes Franceses'),
(230, 'Timor Oriental'),
(231, 'Togo'),
(232, 'Tokelau'),
(233, 'Tonga'),
(234, 'Trinidad y Tobago'),
(235, 'Túnez'),
(236, 'Turkmenistán'),
(237, 'Turquía'),
(238, 'Tuvalu'),
(239, 'Ucrania'),
(240, 'Uganda'),
(241, 'Unión Europea'),
(242, 'Uruguay'),
(243, 'Uzbekistán'),
(244, 'Vanuatu'),
(245, 'Venezuela'),
(246, 'Vietnam'),
(247, 'Wake Island'),
(248, 'Wallis y Futuna'),
(249, 'West Bank'),
(250, 'World'),
(251, 'Yemen'),
(252, 'Yibuti'),
(253, 'Zambia'),
(254, 'Zimbabue');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `id_comunidad_autonoma` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `provincia`, `id_comunidad_autonoma`) VALUES
(1, 'Alava', 17),
(2, 'Albacete', 6),
(3, 'Alicante', 10),
(4, 'Almería', 1),
(5, 'Ávila', 7),
(6, 'Badajoz', 12),
(7, 'Baleares', 3),
(8, 'Barcelona', 8),
(9, 'Burgos', 7),
(10, 'Cáceres', 12),
(11, 'Cádiz', 1),
(12, 'Castellón', 10),
(13, 'Ciudad Real', 6),
(14, 'Córdoba', 1),
(15, 'La Coruña', 13),
(16, 'Cuenca', 6),
(17, 'Gerona', 8),
(18, 'Granada', 1),
(19, 'Guadalajara', 6),
(20, 'Guipúzcoa', 17),
(21, 'Huelva', 1),
(22, 'Huesca', 2),
(23, 'Jaén', 1),
(24, 'León', 7),
(25, 'Lleida', 8),
(26, 'La Rioja', 14),
(27, 'Lugo', 13),
(28, 'Madrid', 11),
(29, 'Málaga', 1),
(30, 'Murcia', 19),
(31, 'Navarra', 16),
(32, 'Orense', 13),
(33, 'Asturias', 18),
(34, 'Palencia', 7),
(35, 'Las Palmas', 4),
(36, 'Pontevedra', 13),
(37, 'Salamanca', 7),
(38, 'Santa Cruz De Tenerife', 4),
(39, 'Cantabria', 5),
(40, 'Segovia', 7),
(41, 'Sevilla', 1),
(42, 'Soria', 7),
(43, 'Tarragona', 8),
(44, 'Teruel', 2),
(45, 'Toledo', 6),
(46, 'Valencia', 10),
(47, 'Valladolid', 7),
(48, 'Vizcaya', 17),
(49, 'Zamora', 7),
(50, 'Zaragoza', 2),
(51, 'Ceuta', 9),
(52, 'Melilla', 15);

-- --------------------------------------------------------

--
-- Table structure for table `puesto`
--

CREATE TABLE `puesto` (
  `id_puesto` int(11) NOT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `categoria_profesional` int(11) DEFAULT NULL,
  `salario_min` decimal(15,2) DEFAULT NULL,
  `salario_max` decimal(15,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `funciones` text DEFAULT NULL,
  `depende_de` int(11) DEFAULT NULL COMMENT 'Indica el puesto del que depende, para poder crear el organigrama funcional',
  `formacion_reglada` int(11) DEFAULT NULL COMMENT 'ver tabla estudio',
  `formacion_no_reglada` text DEFAULT NULL,
  `experiencia` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `puesto`
--

INSERT INTO `puesto` (`id_puesto`, `puesto`, `departamento`, `categoria_profesional`, `salario_min`, `salario_max`, `descripcion`, `funciones`, `depende_de`, `formacion_reglada`, `formacion_no_reglada`, `experiencia`) VALUES
(1, 'Dirección Financiero', 3, 1, NULL, NULL, 'Dirección Financiero', 'ww', 3, 6, 'ww', 'ww'),
(2, 'Jefa Administración', 3, 2, 900.00, 1000.00, 'Descripción', 'Funciones', 1, 7, 'Formación no reglada', 'Experiencia'),
(3, 'Direccion General', 1, 1, 1.00, 2.00, 's', 's', 5, 7, 's', 's'),
(4, 'Dirección de Comunicación', 5, 1, 15000.00, 21000.00, 'Dirección de Comunicación', 'DESARROLLO DE ESTRATEGIA DE COMUNICACIÓN Y SU IMPLANTACIÓN EFICAZ', 3, 7, 'ddd', 'kkñlk'),
(5, 'Comité Dirección', 1, 1, NULL, 1.00, 'Comité de Dirección encargado de la planificación estratégica d ella organziación', 'Planificación estratégica y viabilidad del negocio', 5, 7, 'nada', 'al menos 2 años de dirección'),
(6, 'Tecnico Contable', 3, 3, 500.00, 800.00, 'Tecnico  contabilidad', 'actividades de gestión administrativa', 2, 6, 'no', 'no'),
(7, 'Dirección de Personal', 4, 1, 1000.00, 1200.00, 'DIrección de personal', 'Gestión de Clima laboral,  desarrollo de estrategia de RRHH', 3, 7, 'rrhh', '2 año tecnico'),
(8, 'Técnico Laboral', 4, 3, 200.00, 800.00, 'Técnico Laboral', 'ADMINISTRACIÓN DE RECURSOS HUMANOS, Seleccionar, organizar y gestionar información y documentación sociolaboral relevante y pertinente para la eficacia de los procesos de Recursos Humanos.', 7, 6, 'tecnico rrhh', 'no'),
(9, 'Técnico selección y desarrollo de personal', 4, 3, 800.00, 900.00, 'Técnico selección y desarrollo de personal', 'Seleccionar, interpretar e implementar la normativa laboral específica vinculada a la regulación de las relaciones de empleo y a las necesidades de gestión de recursos humanos.', 7, 6, 'tecnico', 'no'),
(10, ' Técnico de comunicación', 5, 3, 1000.00, 1200.00, ' Técnico de comunicación', 'APLICACIÓN DE TECNICAS DE COMUNICACIÓN', 4, 6, 'NA', 'NA'),
(11, 'Técnico diseñador web y grafico', 5, 3, 1000.00, 1200.00, 'Técnico diseñador web y grafico', 'CONFECCIÓN Y PUBLICACIÓN DE PÁGINAS WEB Y DESARROLLO DE APLICACIONES CON TECNOLOGÍAS WEB', 4, 6, 'NA', 'NA'),
(12, 'Técnico maquetador', 5, 3, 1000.00, 1200.00, 'Técnico maquetador', ' TRATAMIENTO Y MAQUETACIÓN DE ELEMENTOS GRÁFICOS EN PREIMPRESIÓN  Y DISEÑO DE PRODUCTOS GRÁFICOS', 4, 6, 'NA', 'NA'),
(13, 'Responsable Informática', 6, 3, 1000.00, 1200.00, 'Responsable Informática', 'GESTIÓN DE SISTEMAS INFORMÁTICOS; ADMINISTRACIÓN Y PROGRAMACIÓN EN SISTEMAS DE PLANIFICACIÓN DE RECURSOS EMPRESARIALES Y DE GESTIÓN DE RELACIONES CON CLIENTES', 19, 6, 'na', 'na'),
(14, 'Programador', 6, 3, 1000.00, 1200.00, 'Programador', 'DESARROLLO DE APLICACIONES CON TECNOLOGÍAS WEB PROGRAMACIÓN DE SISTEMAS INFORMÁTICOS', 19, 6, 'na', 'na'),
(15, 'Practicante Nuevas Tecnologias', 6, 4, 500.00, 600.00, 'Practicantes', 'apoyo al departamento', 19, 6, 'na', 'na'),
(16, 'Dirección Marketing', 7, 1, 2000.00, 2500.00, 'Dirección Marketing', 'GESTIÓN DE MARKETING Y COMUNICACIÓN', 3, 6, 'na', '2 años tecnico marketing'),
(17, 'Técnico marketing', 7, 3, 1000.00, 1200.00, 'Técnico marketing', ' ASISTENCIA A LA INVESTIGACIÓN DE MERCADOS. ', 16, 6, 'na', 'na'),
(18, 'Dirección de Nuevos Productos', 9, 1, 1000.00, 1200.00, 'Dirección de Nuevos Productos', 'Diseñar de nuevo producto relacionado con las necesidades y el objeto de la empresa', 3, 6, 'na', 'na'),
(19, 'Dirección Nuevas Tecnologías e I+D+i', 6, 1, 4000.00, 5000.00, 'Gestionar el departamento de nuevas tecnologías e I+D+i', 'conseguir que el departamento funcione sin contratiempos', 3, 7, 'nuevas tecnologías y redes sociales', 'al menos 3 años en puestos relacionados'),
(20, 'Dirección de Proyectos', 8, 1, 2000.00, 5000.00, 'Dirección y coordinación de proyectos.', 'Dirección y coordinación de proyectos.', 3, 7, 'cursos relacionados con los proyectos asignados', 'al menos 2 años como técnico de proyectos similares a los asignados '),
(21, 'Técnico Proyecto', 8, 3, 1500.00, 2500.00, 'Técnico de proyectos', 'Preparación documentación técnica de proyectos de licitaciones presentadas y su justificación', 20, 6, 'especialización en los proyectos asigandos', 'na'),
(22, 'Practicante Proyectos', 8, 4, 1000.00, 1300.00, 'Practicante departamento de proyectos', 'Realizar de las tareas encomendadas en tiempo y forma', 21, 6, 'na', 'na'),
(23, 'Dirección de Calidad', 10, 1, 2000.00, 2500.00, 'Dirección de Calidad', 'apoyo a todos los departamentos para el control del cumplimiento de los requisitos de clientes', 3, 7, 'conocimiento normativas de calidad y legislación aplicable a los proyectos', 'al menos 2 años en puesto de técnico calidad'),
(24, 'Técnico de Calidad', 10, 3, 1000.00, 1200.00, 'TÉCNICO DE CALIDAD', 'Apoyo al departamento de calidad en relación al control de proyectos y control de proveedores / colaboradores', 23, 6, 'conocimiento de las normas de calidad y de la legislación aplicable a la organización y a los proyectos afectados', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `puesto_competencia`
--

CREATE TABLE `puesto_competencia` (
  `id_puesto` int(11) NOT NULL,
  `id_competencia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `puesto_subcompetencia`
--

CREATE TABLE `puesto_subcompetencia` (
  `id_puesto` int(11) NOT NULL,
  `id_subcompetencia` int(11) NOT NULL,
  `id_tipo_nivel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `puesto_subcompetencia`
--

INSERT INTO `puesto_subcompetencia` (`id_puesto`, `id_subcompetencia`, `id_tipo_nivel`) VALUES
(4, 32, 0),
(4, 20, 0),
(4, 9, 0),
(4, 10, 0),
(4, 13, 0),
(4, 14, 0),
(4, 12, 0),
(4, 11, 0),
(4, 19, 0),
(4, 18, 0),
(1, 32, 0),
(1, 20, 0),
(1, 9, 0),
(1, 10, 0),
(1, 13, 0),
(1, 14, 0),
(1, 12, 0),
(1, 11, 0),
(1, 19, 0),
(1, 18, 0),
(1, 8, 0),
(1, 7, 0),
(1, 6, 0),
(1, 34, 0),
(1, 35, 0),
(1, 33, 0),
(1, 21, 0),
(1, 37, 0),
(1, 22, 0),
(1, 5, 0),
(1, 36, 0),
(1, 43, 0),
(1, 3, 0),
(1, 2, 0),
(1, 4, 0),
(1, 1, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 42, 0),
(1, 31, 0),
(1, 24, 0),
(1, 23, 0),
(1, 25, 0),
(1, 26, 0),
(1, 58, 0),
(1, 56, 0),
(1, 57, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(3, 32, 0),
(3, 20, 0),
(3, 9, 0),
(3, 10, 0),
(3, 13, 0),
(3, 14, 0),
(3, 12, 0),
(3, 11, 0),
(3, 19, 0),
(3, 18, 0),
(3, 8, 0),
(3, 7, 0),
(3, 6, 0),
(3, 41, 0),
(3, 44, 0),
(3, 34, 0),
(3, 35, 0),
(3, 33, 0),
(3, 21, 0),
(3, 37, 0),
(3, 22, 0),
(3, 5, 0),
(3, 36, 0),
(3, 43, 0),
(3, 3, 0),
(3, 2, 0),
(3, 4, 0),
(3, 1, 0),
(3, 38, 0),
(3, 39, 0),
(3, 40, 0),
(3, 42, 0),
(3, 31, 0),
(3, 24, 0),
(3, 23, 0),
(3, 25, 0),
(3, 26, 0),
(3, 54, 0),
(3, 55, 0),
(5, 32, 0),
(5, 20, 0),
(5, 9, 0),
(5, 10, 0),
(5, 13, 0),
(5, 14, 0),
(5, 12, 0),
(5, 11, 0),
(5, 19, 0),
(5, 18, 0),
(5, 8, 0),
(5, 7, 0),
(5, 6, 0),
(5, 41, 0),
(5, 44, 0),
(5, 34, 0),
(5, 35, 0),
(5, 33, 0),
(5, 21, 0),
(5, 37, 0),
(5, 22, 0),
(5, 5, 0),
(5, 36, 0),
(5, 43, 0),
(5, 3, 0),
(5, 2, 0),
(5, 4, 0),
(5, 1, 0),
(5, 38, 0),
(5, 39, 0),
(5, 40, 0),
(5, 42, 0),
(5, 31, 0),
(5, 24, 0),
(5, 23, 0),
(5, 25, 0),
(5, 26, 0),
(5, 146, 0),
(5, 144, 0),
(5, 147, 0),
(5, 148, 0),
(5, 145, 0),
(2, 32, 0),
(2, 20, 0),
(2, 9, 0),
(2, 10, 0),
(2, 13, 0),
(2, 14, 0),
(2, 12, 0),
(2, 11, 0),
(2, 19, 0),
(2, 18, 0),
(2, 8, 0),
(2, 7, 0),
(2, 6, 0),
(2, 52, 0),
(2, 46, 0),
(2, 47, 0),
(2, 51, 0),
(2, 49, 0),
(2, 50, 0),
(2, 48, 0),
(2, 45, 0),
(2, 44, 0),
(2, 34, 0),
(2, 35, 0),
(2, 33, 0),
(2, 21, 0),
(2, 37, 0),
(2, 22, 0),
(2, 5, 0),
(2, 36, 0),
(2, 3, 0),
(2, 2, 0),
(2, 4, 0),
(2, 1, 0),
(2, 31, 0),
(2, 24, 0),
(2, 23, 0),
(2, 25, 0),
(2, 26, 0),
(2, 63, 0),
(2, 62, 0),
(2, 64, 0),
(6, 32, 0),
(6, 20, 0),
(6, 9, 0),
(6, 10, 0),
(6, 13, 0),
(6, 14, 0),
(6, 12, 0),
(6, 11, 0),
(6, 19, 0),
(6, 18, 0),
(6, 8, 0),
(6, 7, 0),
(6, 6, 0),
(6, 52, 0),
(6, 46, 0),
(6, 47, 0),
(6, 51, 0),
(6, 49, 0),
(6, 50, 0),
(6, 48, 0),
(6, 45, 0),
(6, 31, 0),
(6, 24, 0),
(6, 23, 0),
(6, 25, 0),
(6, 26, 0),
(6, 65, 0),
(6, 66, 0),
(6, 67, 0),
(7, 32, 0),
(7, 20, 0),
(7, 9, 0),
(7, 10, 0),
(7, 13, 0),
(7, 14, 0),
(7, 12, 0),
(7, 11, 0),
(7, 19, 0),
(7, 18, 0),
(7, 8, 0),
(7, 7, 0),
(7, 6, 0),
(7, 41, 0),
(7, 44, 0),
(7, 34, 0),
(7, 35, 0),
(7, 33, 0),
(7, 21, 0),
(7, 37, 0),
(7, 22, 0),
(7, 5, 0),
(7, 36, 0),
(7, 43, 0),
(7, 3, 0),
(7, 2, 0),
(7, 4, 0),
(7, 1, 0),
(7, 38, 0),
(7, 39, 0),
(7, 40, 0),
(7, 42, 0),
(7, 31, 0),
(7, 24, 0),
(7, 23, 0),
(7, 25, 0),
(7, 26, 0),
(7, 68, 0),
(7, 69, 0),
(7, 74, 0),
(7, 73, 0),
(8, 32, 0),
(8, 20, 0),
(8, 9, 0),
(8, 10, 0),
(8, 13, 0),
(8, 14, 0),
(8, 12, 0),
(8, 11, 0),
(8, 19, 0),
(8, 18, 0),
(8, 8, 0),
(8, 7, 0),
(8, 6, 0),
(8, 52, 0),
(8, 47, 0),
(8, 51, 0),
(8, 49, 0),
(8, 50, 0),
(8, 48, 0),
(8, 45, 0),
(8, 41, 0),
(8, 44, 0),
(8, 34, 0),
(8, 35, 0),
(8, 33, 0),
(8, 21, 0),
(8, 37, 0),
(8, 22, 0),
(8, 5, 0),
(8, 36, 0),
(8, 43, 0),
(8, 3, 0),
(8, 2, 0),
(8, 4, 0),
(8, 1, 0),
(8, 38, 0),
(8, 39, 0),
(8, 40, 0),
(8, 42, 0),
(8, 31, 0),
(8, 24, 0),
(8, 23, 0),
(8, 25, 0),
(8, 26, 0),
(8, 68, 0),
(8, 69, 0),
(8, 74, 0),
(8, 73, 0),
(9, 32, 0),
(9, 20, 0),
(9, 9, 0),
(9, 10, 0),
(9, 13, 0),
(9, 14, 0),
(9, 12, 0),
(9, 11, 0),
(9, 19, 0),
(9, 18, 0),
(9, 8, 0),
(9, 7, 0),
(9, 6, 0),
(9, 52, 0),
(9, 47, 0),
(9, 51, 0),
(9, 49, 0),
(9, 50, 0),
(9, 48, 0),
(9, 45, 0),
(9, 41, 0),
(9, 44, 0),
(9, 34, 0),
(9, 35, 0),
(9, 33, 0),
(9, 21, 0),
(9, 37, 0),
(9, 22, 0),
(9, 5, 0),
(9, 36, 0),
(9, 43, 0),
(9, 3, 0),
(9, 2, 0),
(9, 4, 0),
(9, 1, 0),
(9, 38, 0),
(9, 39, 0),
(9, 40, 0),
(9, 42, 0),
(9, 31, 0),
(9, 24, 0),
(9, 23, 0),
(9, 25, 0),
(9, 26, 0),
(9, 75, 0),
(9, 76, 0),
(4, 8, 0),
(4, 7, 0),
(4, 6, 0),
(4, 41, 3),
(4, 44, 4),
(4, 34, 5),
(4, 35, 5),
(4, 33, 5),
(4, 21, 5),
(4, 37, 5),
(4, 22, 5),
(4, 5, 5),
(4, 36, 5),
(4, 43, 3),
(4, 3, 5),
(4, 2, 5),
(4, 4, 5),
(4, 1, 5),
(4, 38, 4),
(4, 39, 5),
(4, 40, 4),
(4, 42, 3),
(4, 31, 5),
(4, 24, 5),
(4, 23, 5),
(4, 25, 3),
(4, 26, 3),
(4, 80, 5),
(4, 78, 5),
(4, 82, 5),
(4, 77, 5),
(4, 81, 5),
(4, 79, 5),
(10, 32, 0),
(10, 20, 0),
(10, 9, 0),
(10, 10, 0),
(10, 13, 0),
(10, 14, 0),
(10, 12, 0),
(10, 11, 0),
(10, 19, 0),
(10, 18, 0),
(10, 8, 0),
(10, 7, 0),
(10, 6, 0),
(10, 53, 0),
(10, 52, 0),
(10, 46, 0),
(10, 47, 0),
(10, 51, 0),
(10, 49, 0),
(10, 50, 0),
(10, 48, 0),
(10, 45, 0),
(10, 31, 0),
(10, 24, 0),
(10, 23, 0),
(10, 25, 0),
(10, 26, 0),
(10, 86, 0),
(10, 92, 0),
(10, 85, 0),
(10, 91, 0),
(10, 89, 0),
(10, 83, 0),
(10, 87, 0),
(10, 84, 0),
(10, 95, 0),
(10, 88, 0),
(11, 32, 5),
(11, 20, 5),
(11, 9, 5),
(11, 10, 5),
(11, 13, 5),
(11, 14, 5),
(11, 12, 5),
(11, 11, 5),
(11, 19, 5),
(11, 18, 5),
(11, 8, 5),
(11, 7, 5),
(11, 6, 5),
(11, 53, 5),
(11, 52, 5),
(11, 46, 5),
(11, 47, 5),
(11, 51, 5),
(11, 49, 5),
(11, 50, 5),
(11, 48, 5),
(11, 45, 5),
(11, 31, 5),
(11, 24, 5),
(11, 23, 5),
(11, 25, 5),
(11, 26, 5),
(11, 124, 5),
(11, 100, 5),
(11, 99, 5),
(11, 97, 5),
(11, 98, 5),
(11, 96, 5),
(12, 32, 5),
(12, 20, 5),
(12, 9, 5),
(12, 10, 5),
(12, 13, 5),
(12, 14, 5),
(12, 12, 5),
(12, 11, 5),
(12, 19, 5),
(12, 18, 5),
(12, 8, 5),
(12, 7, 5),
(12, 6, 5),
(12, 53, 5),
(12, 52, 5),
(12, 46, 5),
(12, 47, 5),
(12, 51, 5),
(12, 49, 5),
(12, 50, 5),
(12, 48, 5),
(12, 45, 5),
(12, 31, 5),
(12, 24, 5),
(12, 23, 5),
(12, 25, 5),
(12, 26, 5),
(12, 105, 5),
(12, 104, 5),
(12, 102, 5),
(12, 101, 5),
(12, 103, 5),
(12, 106, 5),
(12, 107, 5),
(12, 109, 5),
(12, 108, 5),
(12, 110, 5),
(13, 32, 5),
(13, 20, 5),
(13, 9, 5),
(13, 10, 5),
(13, 13, 5),
(13, 14, 5),
(13, 12, 3),
(13, 11, 3),
(13, 19, 3),
(13, 18, 3),
(13, 8, 3),
(13, 7, 3),
(13, 6, 3),
(13, 53, 3),
(13, 52, 3),
(13, 46, 3),
(13, 47, 3),
(13, 51, 3),
(13, 49, 2),
(13, 50, 3),
(13, 48, 3),
(13, 45, 3),
(13, 31, 5),
(13, 24, 5),
(13, 23, 5),
(13, 25, 5),
(13, 26, 5),
(13, 119, 5),
(13, 118, 5),
(13, 120, 5),
(13, 117, 5),
(13, 116, 5),
(13, 115, 5),
(13, 114, 5),
(13, 113, 5),
(13, 111, 5),
(13, 112, 5),
(13, 123, 5),
(13, 121, 5),
(13, 122, 5),
(14, 32, 5),
(14, 20, 5),
(14, 9, 5),
(14, 10, 5),
(14, 13, 5),
(14, 14, 5),
(14, 12, 5),
(14, 11, 5),
(14, 19, 5),
(14, 18, 5),
(14, 8, 5),
(14, 7, 5),
(14, 6, 5),
(14, 53, 5),
(14, 52, 5),
(14, 46, 5),
(14, 47, 5),
(14, 51, 5),
(14, 49, 5),
(14, 50, 2),
(14, 48, 2),
(14, 45, 5),
(14, 31, 5),
(14, 24, 5),
(14, 23, 5),
(14, 25, 5),
(14, 26, 5),
(14, 124, 5),
(14, 100, 5),
(14, 99, 5),
(15, 32, 5),
(15, 20, 5),
(15, 9, 5),
(15, 10, 5),
(15, 13, 5),
(15, 14, 5),
(15, 12, 5),
(15, 11, 5),
(15, 19, 5),
(15, 18, 5),
(15, 8, 5),
(15, 7, 5),
(15, 6, 5),
(15, 31, 5),
(15, 24, 5),
(15, 23, 5),
(15, 25, 5),
(15, 26, 5),
(16, 32, 5),
(16, 20, 5),
(16, 9, 5),
(16, 10, 5),
(16, 13, 5),
(16, 14, 5),
(16, 12, 5),
(16, 11, 5),
(16, 19, 5),
(16, 18, 5),
(16, 8, 5),
(16, 7, 5),
(16, 6, 5),
(16, 41, 5),
(16, 44, 5),
(16, 34, 5),
(16, 35, 5),
(16, 33, 5),
(16, 21, 5),
(16, 37, 5),
(16, 22, 5),
(16, 5, 5),
(16, 36, 5),
(16, 43, 5),
(16, 3, 5),
(16, 2, 5),
(16, 4, 5),
(16, 1, 5),
(16, 38, 5),
(16, 39, 5),
(16, 40, 5),
(16, 42, 5),
(16, 31, 5),
(16, 24, 5),
(16, 23, 5),
(16, 25, 5),
(16, 26, 5),
(16, 135, 5),
(16, 134, 5),
(16, 136, 5),
(16, 133, 5),
(16, 131, 5),
(16, 132, 5),
(17, 32, 5),
(17, 20, 5),
(17, 9, 5),
(17, 10, 5),
(17, 13, 5),
(17, 14, 5),
(17, 12, 5),
(17, 11, 5),
(17, 19, 5),
(17, 18, 5),
(17, 8, 5),
(17, 7, 5),
(17, 6, 5),
(17, 53, 5),
(17, 52, 5),
(17, 46, 5),
(17, 47, 5),
(17, 50, 5),
(17, 48, 5),
(17, 45, 5),
(17, 31, 5),
(17, 24, 5),
(17, 23, 5),
(17, 25, 5),
(17, 26, 5),
(17, 137, 5),
(17, 138, 5),
(17, 139, 5),
(18, 32, 5),
(18, 20, 5),
(18, 9, 5),
(18, 10, 5),
(18, 13, 5),
(18, 14, 5),
(18, 12, 5),
(18, 11, 5),
(18, 19, 5),
(18, 18, 5),
(18, 8, 5),
(18, 7, 5),
(18, 6, 5),
(18, 41, 5),
(18, 44, 5),
(18, 34, 5),
(18, 35, 5),
(18, 33, 5),
(18, 21, 5),
(18, 37, 5),
(18, 22, 5),
(18, 5, 5),
(18, 36, 5),
(18, 43, 5),
(18, 3, 5),
(18, 2, 5),
(18, 4, 5),
(18, 1, 5),
(18, 38, 5),
(18, 39, 5),
(18, 40, 5),
(18, 42, 5),
(18, 31, 5),
(18, 24, 5),
(18, 23, 5),
(18, 25, 5),
(18, 26, 5),
(18, 142, 5),
(18, 141, 5),
(18, 143, 5),
(18, 140, 5),
(19, 12, 5),
(19, 11, 5),
(19, 19, 5),
(19, 18, 5),
(19, 8, 5),
(19, 7, 5),
(19, 6, 5),
(19, 41, 5),
(19, 44, 5),
(19, 34, 5),
(19, 35, 5),
(19, 33, 5),
(19, 21, 5),
(19, 37, 5),
(19, 22, 5),
(19, 5, 5),
(19, 36, 5),
(19, 43, 5),
(19, 3, 5),
(19, 2, 5),
(19, 4, 5),
(19, 1, 5),
(19, 38, 5),
(19, 39, 5),
(19, 40, 5),
(19, 42, 5),
(19, 31, 5),
(19, 24, 5),
(19, 23, 5),
(19, 25, 5),
(19, 26, 5),
(19, 119, 2),
(19, 118, 2),
(19, 120, 2),
(19, 117, 2),
(19, 116, 2),
(19, 115, 2),
(19, 114, 3),
(19, 127, 2),
(19, 125, 2),
(19, 126, 3),
(19, 130, 2),
(19, 128, 2),
(19, 129, 2),
(19, 156, 5),
(19, 149, 5),
(19, 157, 5),
(19, 153, 5),
(19, 151, 5),
(19, 150, 5),
(19, 152, 5),
(19, 155, 5),
(19, 154, 5),
(19, 158, 5),
(19, 159, 5),
(19, 160, 5),
(19, 162, 5),
(19, 161, 5),
(19, 113, 3),
(19, 111, 2),
(19, 112, 2),
(19, 124, 2),
(19, 100, 2),
(19, 99, 2),
(19, 123, 2),
(19, 121, 2),
(19, 122, 2),
(19, 14, 5),
(19, 13, 5),
(19, 10, 5),
(19, 20, 5),
(19, 32, 5),
(20, 32, 5),
(20, 20, 5),
(20, 9, 5),
(20, 10, 5),
(20, 13, 5),
(20, 14, 5),
(20, 12, 5),
(20, 11, 5),
(20, 19, 5),
(20, 18, 5),
(20, 8, 5),
(20, 7, 5),
(20, 6, 5),
(20, 41, 3),
(20, 44, 3),
(20, 34, 5),
(20, 35, 5),
(20, 33, 5),
(20, 21, 5),
(20, 37, 5),
(20, 22, 5),
(20, 5, 5),
(20, 36, 5),
(20, 43, 3),
(20, 3, 5),
(20, 2, 5),
(20, 4, 5),
(20, 1, 5),
(20, 38, 5),
(20, 39, 5),
(20, 40, 3),
(20, 42, 3),
(20, 31, 5),
(20, 24, 5),
(20, 23, 5),
(20, 25, 5),
(20, 26, 5),
(20, 164, 5),
(20, 163, 5),
(21, 32, 5),
(21, 20, 5),
(21, 9, 5),
(21, 10, 5),
(21, 13, 5),
(21, 14, 5),
(21, 12, 5),
(21, 11, 5),
(21, 19, 5),
(21, 18, 5),
(21, 8, 5),
(21, 7, 5),
(21, 6, 5),
(21, 53, 5),
(21, 52, 5),
(21, 46, 5),
(21, 47, 5),
(21, 51, 5),
(21, 49, 5),
(21, 50, 5),
(21, 48, 5),
(21, 45, 5),
(21, 31, 3),
(21, 24, 5),
(21, 23, 5),
(21, 25, 5),
(21, 26, 5),
(21, 165, 5),
(21, 164, 5),
(21, 163, 5),
(22, 26, 3),
(22, 25, 2),
(22, 23, 5),
(22, 24, 5),
(22, 31, 5),
(22, 6, 3),
(22, 7, 5),
(22, 8, 5),
(22, 18, 3),
(22, 19, 3),
(22, 11, 5),
(22, 12, 5),
(22, 14, 5),
(22, 13, 5),
(22, 10, 5),
(22, 9, 5),
(22, 20, 5),
(22, 32, 5),
(23, 169, 5),
(23, 168, 5),
(23, 166, 5),
(23, 167, 5),
(23, 26, 5),
(23, 25, 5),
(23, 23, 5),
(23, 24, 5),
(23, 31, 3),
(23, 42, 3),
(23, 40, 3),
(23, 39, 5),
(23, 38, 3),
(23, 1, 5),
(23, 4, 5),
(23, 2, 5),
(23, 3, 5),
(23, 43, 3),
(23, 36, 5),
(23, 5, 5),
(23, 22, 5),
(23, 37, 3),
(23, 21, 5),
(23, 33, 5),
(23, 35, 5),
(23, 34, 5),
(23, 44, 5),
(23, 41, 3),
(23, 6, 5),
(23, 7, 5),
(23, 8, 5),
(23, 18, 5),
(23, 19, 5),
(23, 11, 5),
(23, 12, 5),
(23, 14, 5),
(23, 13, 5),
(23, 10, 5),
(23, 9, 5),
(23, 20, 5),
(23, 32, 5),
(24, 10, 5),
(24, 13, 5),
(24, 14, 5),
(24, 12, 5),
(24, 11, 5),
(24, 19, 5),
(24, 18, 3),
(24, 8, 5),
(24, 7, 5),
(24, 6, 5),
(24, 53, 5),
(24, 52, 5),
(24, 46, 5),
(24, 47, 5),
(24, 51, 5),
(24, 49, 5),
(24, 50, 5),
(24, 48, 5),
(24, 45, 3),
(24, 31, 5),
(24, 24, 5),
(24, 23, 5),
(24, 25, 2),
(24, 26, 3),
(24, 167, 2),
(24, 170, 5),
(24, 166, 5),
(24, 171, 5),
(24, 169, 2),
(24, 9, 5),
(24, 20, 5),
(24, 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `roleaction`
--

CREATE TABLE `roleaction` (
  `id_roleaction` int(11) NOT NULL,
  `id_modulefeatures` int(11) NOT NULL,
  `action_name` varchar(50) NOT NULL,
  `action_value` varchar(50) NOT NULL,
  `action_description` varchar(150) NOT NULL,
  `isvisible_1` tinyint(1) NOT NULL DEFAULT 1,
  `isvisible_2` tinyint(1) NOT NULL DEFAULT 0,
  `isvisible_3` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roleaction`
--

INSERT INTO `roleaction` (`id_roleaction`, `id_modulefeatures`, `action_name`, `action_value`, `action_description`, `isvisible_1`, `isvisible_2`, `isvisible_3`) VALUES
(21, 1, 'Ver organigrama', 'organization:view', 'Si marca esta opción podrá ver el organigrama.', 1, 1, 1),
(22, 2, 'Editar datos personales', 'employee:edit', 'Si marca esta opción podrá editar los datos personales.', 1, 1, 0),
(23, 2, 'Cualquier empleado', 'employee:all', 'Si marca esta opción podrá ver cualquier empleado, dependan o no del usuario logeado.', 1, 0, 0),
(24, 2, 'Editar contacto', 'employee:editcontact', 'Si marca esta opción podrá editar los datos de la pestaña contacto.', 1, 1, 0),
(25, 2, 'Crear laboral', 'employee:addwork', 'Si marca esta opción podrá crear registros en la pestaña laborales.', 1, 0, 0),
(26, 2, 'Editar laboral', 'employee:editwork', 'Si marca esta opción podrá editar registros en la pestaña laborales.', 1, 0, 0),
(27, 2, 'Eliminar laboral', 'employee:delwork', 'Si marca esta opción podrá eliminar registros en la pestaña laborales.', 1, 0, 0),
(28, 2, 'Exportar laboral', 'employee:exportwork', 'Si marca esta opción podrá exportar los registros de la pestaña laborales.', 1, 0, 0),
(29, 2, 'Crear retribución', 'employee:addsalary', 'Si marca esta opción podrá crear registros en la pestaña retribuciones.', 1, 0, 0),
(30, 2, 'Editar retribución', 'employee:editsalary', 'Si marca esta opción podrá editar registros en la pestaña retribuciones.', 1, 0, 0),
(31, 2, 'Eliminar retribución', 'employee:delsalary', 'Si marca esta opción podrá eliminar registros en la pestaña retribuciones.', 1, 0, 0),
(32, 2, 'Exportar retribución', 'employee:exportsalary', 'Si marca esta opción podrá exportar los registros de la pestaña retribución.', 1, 0, 0),
(33, 2, 'Crear curriculum', 'employee:addcurriculum', 'Si marca esta opción podrá crear registros en la pestaña curriculum.', 1, 1, 0),
(34, 2, 'Editar curriculum', 'employee:editcurriculum', 'Si marca esta opción podrá editar registros en la pestaña curriculum.', 1, 1, 0),
(35, 2, 'Eliminar curriculum', 'employee:delcurriculum', 'Si marca esta opción podrá eliminar registros en la pestaña curriculum.', 1, 0, 0),
(36, 2, 'Crear experiencia', 'employee:addexperience', 'Si marca esta opción podrá crear registros en la pestaña experiencias.', 1, 1, 0),
(37, 2, 'Editar experiencia', 'employee:editexperience', 'Si marca esta opción podrá editar registros en la pestaña experiencias.', 1, 1, 0),
(38, 2, 'Eliminar experiencia', 'employee:delexperience', 'Si marca esta opción podrá eliminar registros en la pestaña experiencias.', 1, 0, 0),
(39, 2, 'Editar competencia', 'employee:editcompetition', 'Si marca esta opción podrá editar en la pestaña competencias.', 1, 0, 0),
(40, 2, 'Crear plan formación', 'employee:addtrainingplan', 'Si marca esta opción podrá crear registros en la pestaña plan formación.', 1, 0, 0),
(41, 2, 'Editar plan formación', 'employee:edittrainingplan', 'Si marca esta opción podrá editar registros en la pestaña plan formación.', 1, 0, 0),
(42, 2, 'Eliminar plan formación', 'employee:deltrainingplan', 'Si marca esta opción podrá eliminar registros en la pestaña plan formación.', 1, 0, 0),
(43, 7, 'Ver rol', 'rol:view', 'Si marca esta opción podrá ver los roles.', 1, 0, 0),
(44, 7, 'Crear rol', 'rol:add', 'Si marca esta opción podrá crear un rol.', 1, 0, 0),
(45, 7, 'Editar rol', 'rol:edit', 'Si marca esta opción podrá editar un rol.', 1, 0, 0),
(46, 7, 'Permisos rol', 'rol:permission', 'Si marca esta opción podrá configurar los permisos de un rol.', 1, 0, 0),
(47, 8, 'Ver usuario', 'user:view', 'Si marca esta opción podrá ver los usuarios.', 1, 0, 0),
(48, 8, 'Crear usuario', 'user:add', 'Si marca esta opción podrá crear usuarios.', 1, 0, 0),
(49, 8, 'Editar usuario', 'user:edit', 'Si marca esta opción podrá editar usuarios.', 1, 0, 0),
(50, 6, 'Ver contrato', 'contract:view', 'Si marca esta opción podrá ver los contratos.', 1, 0, 0),
(51, 6, 'Crear contrato', 'contract:add', 'Si marca esta opción podrá crear contratos.', 1, 0, 0),
(52, 6, 'Editar contrato', 'contract:edit', 'Si marca esta opción podrá editar contratos.', 1, 0, 0),
(53, 3, 'Ver departamento', 'department:view', 'Si marca esta opción podrá ver los departamentos.', 1, 0, 0),
(54, 3, 'Crear departamento', 'department:add', 'Si marca esta opción podrá crear departamentos.', 1, 0, 0),
(55, 3, 'Editar departamento', 'department:edit', 'Si marca esta opción podrá editar departamentos.', 1, 0, 0),
(56, 4, 'Ver línea', 'line:view', 'Si marca esta opción podrá ver las líneas.', 1, 0, 0),
(57, 4, 'Crear línea', 'line:add', 'Si marca esta opción podrá crear líneas.', 1, 0, 0),
(58, 4, 'Editar línea', 'line:edit', 'Si marca esta opción podrá editar líneas.', 1, 0, 0),
(59, 5, 'Ver puesto', 'post:view', 'Si marca esta opción podrá ver los puestos.', 1, 0, 0),
(60, 5, 'Crear puesto', 'post:add', 'Si marca esta opción podrá crear puestos.', 1, 0, 0),
(61, 5, 'Editar puesto', 'post:edit', 'Si marca esta opción podrá editar puestos.', 1, 0, 0),
(62, 9, 'Ver competencia', 'competition:view', 'Si marca esta opción podrá ver las competencias.', 1, 0, 0),
(63, 9, 'Crear competencia', 'competition:add', 'Si marca esta opción podrá crear competencias.', 1, 0, 0),
(64, 9, 'Editar competencia', 'competition:edit', 'Si marca esta opción podrá editar competencias.', 1, 0, 0),
(65, 10, 'Ver categoría profesional', 'categoryprofessional:view', 'Si marca esta opción podrá ver las categorías profesionales.', 1, 0, 0),
(66, 10, 'Crear categoría profesional', 'categoryprofessional:add', 'Si marca esta opción podrá crear categorías profesionales.', 1, 0, 0),
(67, 10, 'Editar categoría profesional', 'categoryprofessional:edit', 'Si marca esta opción podrá editar categorías profesionales.', 1, 0, 0),
(68, 11, 'Ver estado civil', 'civilstatus:view', 'Si marca esta opción podrá ver los estados civiles.', 1, 0, 0),
(69, 11, 'Crear estado civil', 'civilstatus:add', 'Si marca esta opción podrá crear estados civiles.', 1, 0, 0),
(70, 11, 'Editar estado civil', 'civilstatus:edit', 'Si marca esta opción podrá editar estados civiles.', 1, 0, 0),
(71, 12, 'Ver estudio', 'study:view', 'Si marca esta opción podrá ver los estudios.', 1, 0, 0),
(72, 12, 'Crear estudio', 'study:add', 'Si marca esta opción podrá crear estudios.', 1, 0, 0),
(73, 12, 'Editar estudio', 'study:edit', 'Si marca esta opción podrá editar estudios.', 1, 0, 0),
(74, 13, 'Ver comunidad autónoma', 'state:view', 'Si marca esta opción podrá ver las comunidades autónomas.', 1, 0, 0),
(75, 13, 'Crear comunidad autónoma', 'state:add', 'Si marca esta opción podrá crear comunidades autónomas.', 1, 0, 0),
(76, 13, 'Editar comunidad autónoma', 'state:edit', 'Si marca esta opción podrá editar comunidades autónomas.', 1, 0, 0),
(77, 14, 'Ver provincia', 'city:view', 'Si marca esta opción podrá ver las provincias.', 1, 0, 0),
(78, 14, 'Crear provincia', 'city:add', 'Si marca esta opción podrá crear provincias.', 1, 0, 0),
(79, 14, 'Editar provincia', 'city:edit', 'Si marca esta opción podrá editar provincias.', 1, 0, 0),
(80, 15, 'Ver tipo competencia', 'typecompetition:view', 'Si marca esta opción podrá ver los tipos de competencias.', 1, 0, 0),
(81, 15, 'Crear tipo competencia', 'typecompetition:add', 'Si marca esta opción podrá crear tipos de competencias.', 1, 0, 0),
(82, 15, 'Editar tipo competencia', 'typecompetition:edit', 'Si marca esta opción podrá editar tipos de competencias.', 1, 0, 0),
(83, 16, 'Ver modalidad', 'modality:view', 'Si marca esta opción podrá ver las modalidades.', 1, 0, 0),
(84, 16, 'Crear modalidad', 'modality:add', 'Si marca esta opción podrá crear modalidades.', 1, 0, 0),
(85, 16, 'Editar modalidad', 'modality:edit', 'Si marca esta opción podrá editar modalidades.', 1, 0, 0),
(86, 17, 'Cerrar alertas', 'alert:close', 'Si marca esta opción podrá cerrar alertas.', 1, 0, 0),
(87, 18, 'Ver enlace', 'link:view', 'Si marca esta opción podrá ver los enlaces.', 1, 0, 0),
(88, 18, 'Crear enlace', 'link:add', 'Si marca esta opción podrá crear enlaces.', 1, 0, 0),
(89, 18, 'Editar enlace', 'link:edit', 'Si marca esta opción podrá editar enlaces.', 1, 0, 0),
(90, 18, 'Eliminar enlace', 'link:del', 'Si marca esta opción podrá eliminar enlaces.', 1, 0, 0),
(91, 19, 'Ver notificación', 'notification:view', 'Si marca esta opción podrá ver las notificaciones.', 1, 0, 0),
(92, 19, 'Crear notificación', 'notification:add', 'Si marca esta opción podrá crear notificaciones.', 1, 0, 0),
(93, 20, 'Ver subcompetencia', 'subcompetition:view', 'Si marca esta opción podrá ver las competencias.', 1, 0, 0),
(94, 20, 'Crear subcompetencia', 'subcompetition:add', 'Si marca esta opción podrá crear subcompetencias.', 1, 0, 0),
(95, 20, 'Editar subcompetencia', 'subcompetition:edit', 'Si marca esta opción podrá editar subcompetencias.', 1, 0, 0),
(97, 21, 'Ver informes', 'report:view', 'Si marca esta opción podrá ver los informes.', 1, 0, 0),
(98, 22, 'Ver organigrama puestos', 'organization:postview', 'Si marca esta opción podrá ver el organigrama de puestos.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rolefeatures`
--

CREATE TABLE `rolefeatures` (
  `id_rolefeatures` int(11) NOT NULL,
  `id_modules` int(11) NOT NULL,
  `id_modulefeatures` int(11) NOT NULL,
  `isvisible_1` tinyint(1) NOT NULL DEFAULT 0,
  `isvisible_2` tinyint(1) NOT NULL DEFAULT 0,
  `isvisible_3` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rolefeatures`
--

INSERT INTO `rolefeatures` (`id_rolefeatures`, `id_modules`, `id_modulefeatures`, `isvisible_1`, `isvisible_2`, `isvisible_3`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 1, 1, 1),
(3, 4, 3, 1, 0, 0),
(4, 4, 4, 1, 0, 0),
(5, 4, 5, 1, 0, 0),
(6, 4, 6, 1, 0, 0),
(7, 3, 7, 1, 0, 0),
(8, 3, 8, 1, 0, 0),
(9, 4, 9, 1, 0, 0),
(10, 4, 10, 1, 0, 0),
(11, 4, 11, 1, 0, 0),
(12, 4, 12, 1, 0, 0),
(13, 4, 13, 1, 0, 0),
(14, 4, 14, 1, 0, 0),
(15, 4, 15, 1, 0, 0),
(16, 4, 16, 1, 0, 0),
(17, 5, 17, 1, 1, 1),
(18, 3, 18, 1, 0, 0),
(19, 3, 19, 1, 0, 0),
(20, 4, 20, 1, 0, 0),
(21, 6, 21, 1, 0, 0),
(22, 1, 22, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `role_name` varchar(30) NOT NULL,
  `role_description` varchar(100) DEFAULT NULL,
  `create_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_roles`, `role_name`, `role_description`, `create_date`) VALUES
(1, 'Administrador', 'Administrador', '2014-05-27'),
(2, 'Empleado', 'Empleado', '2014-10-01'),
(3, 'director', NULL, '2016-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `subcompetencia`
--

CREATE TABLE `subcompetencia` (
  `id_subcompetencia` int(11) NOT NULL,
  `id_competencia` int(11) NOT NULL,
  `subcompetencia` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcompetencia`
--

INSERT INTO `subcompetencia` (`id_subcompetencia`, `id_competencia`, `subcompetencia`, `descripcion`) VALUES
(1, 16, 'Definición de objetivos', 'Definir objetivos claros\r\nCreación de implicación personal en todos los niveles\r\nConstrucción de Imagen'),
(2, 16, 'Gestión', 'Gestión en un entorno de trabajo no estructurado\r\nComprensión de las necesidades profesionales\r\nConstrucción de equipos\r\nMantener la credibilidad\r\nMantener la visibilidad\r\nMantener la claridad de la dirección de la gestión\r\nComprensión de la organización\r\nSembrar compromiso\r\nObtener el apoyo y compromiso de la alta dirección\r\nCapacidad para manejar el estrés'),
(3, 16, 'Motivación y gestión equipos', 'Motivar personas\r\nManejo de conflictos\r\nSolución de problemas\r\nGestión de equipos multidisciplinarios\r\nToma de decisiones en grupo'),
(4, 16, 'Emprendimiento', 'Ser orientado a la acción, \r\nSer emprendedor\r\nBusqueda de nuevos proyectos'),
(5, 17, 'Capacidad para desarrollar a las personas', 'capacidad de destacar lo mejor de cada persona '),
(21, 17, 'Supervisión y gestión del equipo del proyecto', 'Capacidad de supervisión y coordinación de equipos.\r\nCoordinación de equipos (comercial y tecnico)'),
(6, 8, ' Capacidad para desenvolverse de manera autónoma.', NULL),
(7, 8, 'Capacidad de autoevaluación', NULL),
(8, 8, 'Capacidad de trabajo en equipo', NULL),
(9, 9, 'Capacidad de presentar el trabajo realizado.', NULL),
(10, 9, 'Capacidad de análisis y síntesis', NULL),
(11, 1, 'Capacidad de aplicar los conocimientos teóricos en la práctica', NULL),
(12, 1, 'Capacidad de gestión de la información', NULL),
(13, 1, 'Motivación por la calidad', NULL),
(14, 1, 'Creatividad e innovación', NULL),
(15, 2, 'Capacidad de aplicación de la información aprendida para resolución de problemas', NULL),
(16, 2, 'Identificación de necesidades tecnológicas y la resolución de problemas técnicos', NULL),
(17, 2, 'Identificación de necesidades de actualización en las competencias digitales', NULL),
(18, 7, 'Capacidad de entender y aplicar necesidades de cliente', 'Capacidad de entender y aplicar a todas las actividades realizadas el concepto \"por y para el cliente\"'),
(19, 5, 'Capacidad de mantener bajo control las emociones', NULL),
(20, 4, 'Adaptación a los cambios dentro y fuera de la organización', NULL),
(22, 17, 'Habilidades interpersonales', 'Habilidades interpersonales'),
(23, 3, 'búsqueda de información digital,', 'Capacidad de busqueda digital de información necesaria para proyectos'),
(24, 3, 'Evaluación de la información', 'Capacidad de evaluación de la fiabilidad y relevancia de la infromación buscada así como su organización y almacenamiento.'),
(25, 10, 'Crear y gestionar comunidad de clientes en redes sociales', ' Ser miembro activo en redes sociales 2.0: LinkedIn, Twitter, RSS, Trello, Google Drive…'),
(26, 14, ' Creación de contenido digital.', 'Creación y edición de nuevos contenidos, incluyendo la programación informática, y a la gestión de los derechos de autor de las creaciones digitales'),
(27, 11, 'Capacidad de manejo del paquete office', NULL),
(28, 13, 'nteracción con otras personas utilizando tecnología digitales', NULL),
(29, 13, 'comunicar, compartir recursos digitales y colaborar en la creación de contenidos', '§  reuniones y conferencias virtuales \r\n§  Chat instantáneos \r\n§  Asistente de gestión de agendas \r\n§  Trabajo en remoto/nube \r\n§  Notas en la nube \r\n'),
(30, 12, 'Diseño de páginas web ', 'Diseño de páginas web en Word Press - al menos nivel basico (requerimientos de una landing)'),
(31, 15, 'Seguridad tecnologíca', 'Las referidas al uso seguro y sostenible de la tecnología e información digital: protección de los dispositivos y de los datos personales, de la salud y del medio ambiente.'),
(32, 6, 'Capacidad de comunicación en ingles', 'comunicación escrita y oral, con nivel B1'),
(33, 33, 'Capacidad de analisis', 'Capacidad de analisis de proyectos y su viabilidad'),
(34, 33, 'Control de presupuestos', 'Control de presupuestos\r\nControl de Facturacion y cobros,\r\nSeguimiento de gastos'),
(35, 33, 'Capacidad de planificación', 'Planificación por etapas de proyectos\r\nPlanificación de presupuestos\r\nSeguimiento de la planificación y las desviaciones\r\n'),
(36, 17, 'Capacidad de negociación', 'Capacidad de negociación tanto de compra como de venta'),
(37, 17, 'Selección de personal', 'Capacidad de definición de necesidades de personal, de gestionar la captación y capacitación de nuevos miembros del equipo, asi como de la implicación en el proyecto'),
(38, 34, 'Identificación de nuevas oportunidades', 'Identificación de nuevas oportunidades de negocio y diseño del producto identificado'),
(39, 34, 'Detección de Necesidades', 'Detección de Necesidades del cliente, o adaptación de las necesidades del cliente a productos en cartera'),
(40, 18, 'MARKETING DIGITAL', 'o   Disponer de un plan de marketing digital \r\no   Captar y fidelizar clientes mediante una estrategia digital \r\no   Manejar de forma fluida las redes sociales para información, comunicación, promoción y seguimiento de eventos\r\no   Crear y/o gestionar aplicaciones de dispositivos móviles para comunicarse y relacionarse mejor con los clientes. \r\no   Tener una estrategia y tecnología específica para gestionar las relaciones con los clientes\r\n'),
(41, 19, 'WEB MARKETING', 'o   Elaborar un diseño web orientado al uso eficiente por parte del usuario\r\no   Realizar un análisis adecuado de la actividad en los sites de su proyecto  en internet (analítica web)\r\no   Lograr un buen posicionamiento para sus sites en internet en buscadores de forma orgánica (SEO)\r\no   Tener un plan estratégico de comercio electrónico multicanal para cada proyecto, o una genérico aplicable a todos los proyectos \r\n'),
(42, 20, ' E COMMERCE', 'o   Aprovechar tecnologías digitales dentro del punto de venta \r\no   Uso de medios de pago utilizando las tecnologías digitales que faciliten la compra \r\no   Digitalización de la gestión del suministro y la logística\r\no   Digitalización de la gestión de la red comercial\r\no   Incorporación del móvil en el comercio electrónico (consideración app) \r\n'),
(43, 21, 'CUSTOMER EXPERIENCE', 'o   Disponer de estrategia y canales de Atención al Cliente a través de medios sociales y digitales \r\no   Diagnosticar la experiencia del cliente en los momentos de la verdad del cliente\r\no   Implementar un Plan de CustomerExperience\r\n'),
(44, 22, 'INNOVACIÓN', 'Tener una estrategia empresarial y metodologías orientadas a formentarla innovación digital'),
(45, 27, 'Creación y configuración de actividades y recursos', 'Creación y configuración de actividades y recursos:\r\n  Creación de copias de seguridad.\r\n  Restauración de copias de segurida\r\n  Asistencia técnica.\r\n  Selección y busqueda de proveedores\r\n'),
(46, 24, 'Gestionar los proyectos asignados en todas las fases', 'Gestionar los proyectos asignados en todas las fases (formulación, ejecución, seguimiento):\r\n  Saber planificar el desarrollo de un proyecto estableciendo un cronograma e indicando los recursos necesarios.\r\n  Gestionar la documentación necesaria para la formulación de los proyectos: marco legal, bases y formularios de convocatoria, prioridades estratégicas y temáticas.\r\n  Realizar la memorias técnicas de los proyectos.\r\n  Tener una excelente redacción y sin faltas de ortografía.\r\n  Realizar presupuestos de los proyectos.\r\n  Asegurar una adecuada gestión documental de los proyectos.\r\n  Conocer las fuentes de financiación de proyectos / organizaciones que publican concursos\r\n  Seleccionar proveedores acorde al perfil previamente definido, a través de Linkedin, Infojobs u otros.\r\n  Realizar seguimiento y revisiones iniciales exhaustivas al desarrollo del proyecto asigando'),
(47, 32, 'Capacidad de gestión y conocimiento de la tecnología web.', 'Interes por las nuevas tendencias y actualidad del sector eLearning.\r\nDisponer de conocimientos de herramientas de diseño.\r\nTener interés por la actualización continua. \r\n'),
(48, 23, 'Capacidad de análisis de información', 'Capacidad de análisis de información, sistematización y redacción.'),
(49, 26, 'Capacidad de coordinación con otros departamentos ', 'Capacidad de coordinación con otros departamentos de la organización'),
(50, 28, 'Capacidad de conocimiento de la normativa', 'Capacidad de coordinación con otros departamentos de la organización'),
(51, 26, 'Capacidad de innovación y creación ', NULL),
(52, 30, 'Capacidad de motivación para tecnologia', 'Estar motivado por las nuevas tecnologías: Moodle, eXeLearning, Wordpress, HTML, CSS…'),
(53, 29, 'Capacidad de usabilidad', 'Disponer de conocimientos profundos de usabilidad y accesibilidad:\r\n\r\n Usabilidad - diferentes técnicas, para realizar una tarea (de forma sencilla y eficaz en un entorno gráfico relacionado con la web). los usuarios deben ser capaces de alcanzar sus objetivos con un mínimo esfuerzo y unos resultados máximos\r\n\r\n Accesibilidad Web es un acceso universal a la Web, independientemente del tipo de hardware, software, infraestructura de red, idioma, cultura, localización geográfica y capacidades de los usuarios.'),
(54, 35, 'Capacidad de Planificación', 'Planificar iniciativas y actividades empresariales'),
(55, 35, 'Capacidad de dirigir y controlar', 'Dirigir y controlar la actividad empresarial diaria y los recursos '),
(56, 36, 'Capacidad de identificar  necesidades financieras ', 'Determinar las necesidades financieras de la empresa'),
(57, 36, 'Capacidad de Gestionar y controlar la tesorería', 'Gestionar y controlar la tesorería y su presupuesto'),
(58, 36, 'Capacidad de manejo de aplicaciones ofimáticas en la gestión ', 'Manejar aplicaciones ofimáticas en la gestión de la información y la documentación'),
(59, 36, 'Capacidad de gestionar los recursos financieros', 'Gestionar la información y contratación de los recursos financieros'),
(60, 37, 'Gestionar y controlar las operaciones de caja', 'Gestionar y controlar las operaciones de caja.'),
(61, 37, 'Capacidad de asesoramiento sobre productos financieros', 'Realizar el asesoramiento y la gestión administrativa de los productos financieros.'),
(62, 38, 'Capacidad de gestion contable y fiscal', 'Realizar la gestión contable y fiscal.\r\n'),
(63, 38, 'Capacidad de manejo del programa de contabilidad', 'Manejar el programa de contabilidad y presentación de impuesto'),
(64, 38, ' Capacidad de analisis de resultados', 'Analisis de los resultados contables\r\nAnalisis y consejos contables\r\nAnalisis y consejos sobre impuestos'),
(65, 39, 'Capacidada de realizar gestiones administrativas', '• Realizar las gestiones administrativas del proceso comercial\r\n• Realizar las gestiones administrativas de tesorería'),
(66, 39, 'Capacidad de realizar registros contables', 'Realizar registros contables segun el plan contable vigente y en el programa de contabilidad de la empresa'),
(67, 39, 'Capacidad de gestión de archivo', '• Introducir datos y textos en terminales informáticos en condiciones de seguridad, calidad y eficiencia.\r\n• Gestionar el archivo en soporte convencional e informático.\r\n• Manejar aplicaciones ofimáticas en la gestión de la información y la documentación'),
(68, 40, 'Implantación de politicas de gestión', 'Implementar acciones y políticas que promuevan la motivación, integración y mejora del clima laboral en la empresa adaptadas a diversos colectivos de trabajadores.'),
(69, 40, 'Habilidades desarrollo de personas', 'Desarrollar y aplicar habilidades directivas acordes a la dirección y desarrollo de personas, equipos de trabajo, manejo de la resolución y negociación de conflictos.'),
(70, 41, 'Capacidad de integración de estratégias', 'Ajustar la estrategia de recursos humanos a la estrategia general de la organización, a la complejidad dinámica del mercado laboral y a las políticas sociolaborales que les afectan.'),
(71, 41, 'Capacidad de evaluación de equipos', 'Plantear procesos de planificación, evaluación de rendimiento y retribución de recursos humanos acordes con la estrategia, estructura y cultura organizativas.'),
(72, 41, 'Capacidad de desarrollo de RRHH', 'Determinar y aplicar técnicas de análisis-descripción de puestos, selección de personas, de formación y aprendizaje continuo para el desarrollo de RRHH.'),
(73, 42, 'Capacidad de administrar información ', 'Administrar los sistemas de información y archivo en soporte convencional e informático.\r\nManejar aplicaciones ofimáticas en la gestión de la información y la documentación\r\nSeleccionar, organizar y gestionar información y documentación sociolaboral relevante y pertinente para la eficacia de los procesos de Recursos Humanos.'),
(74, 42, 'Capacidad de apoyo administrativo ', ' Realizar el apoyo administrativo a las tareas de selección, formación y desarrollo de recursos humanos.'),
(75, 43, 'Capacidad de analisis de normativa laboral', 'Seleccionar, interpretar e implementar la normativa laboral específica vinculada a la regulación de las relaciones de empleo y a las necesidades de gestión de recursos humanos.'),
(76, 43, 'Capacidad de analisis de condiciones laborales', 'Identificar, analizar y asesorar sobre los condicionantes de empleabilidad de los diferentes colectivos relacionados con la organización, y sobre las medidas más adecuadas en el marco de las políticas sociolaborales para favorecer su plena incorporación laboral.'),
(77, 44, 'Capacidad de Planificación de la comunicación', 'Realizar la Planificación estratégica de la comunicación empresarial e institucional.\r\nDesarrollar el Plan de Comunicación Interna\r\nEstablecer habilidades y criterios en la aplicación de las diferentes técnicas de comunicación empresarial.\r\nDiseñar y poner en práctica las estrategias de comunicación externa: publicidad, relaciones públicas, patrocinio, marketing directo e interactivo, promoción y venta personal.\r\nDesarrollar estrategias de comunicación corporativa digital.\r\n'),
(78, 45, 'Capacidad de gestión eficiente', 'Gestionar con eficiencia la comunicación de las organizaciones en general.\r\nGestionar la administración presupuestaria de un departamento de comunicación.\r\nDesarrollo Capacidad de gestión de los activos intangibles.\r\n'),
(79, 46, 'Capacidad de diagnostico de la comunicación', 'Diagnosticar  permanentemente  el  estado  de  las percepciones  de  su  mapa  de  públicos  relevantes\r\nAnalizar el impacto que los cambios de todo tipo  producidos  puedan  tener  sobre  su  capital  de  activos  intangibles\r\nRealización de Auditorías de investigación social y de comunicación\r\n'),
(80, 45, 'Dominio de las herramientas de comunicación', 'Dominio de las herramientas de comunicación '),
(81, 46, 'Conocimiento de las teorias de comunicación', 'Amplio conocimiento en las teorías de la información y comunicación.'),
(82, 45, 'Capacidad de gestión de la creatividad', 'Gestión de la comunicación creativa y  planificación de medios\r\nPoseer y comprender conocimientos que aporten una base u oportunidad de ser originales en el desarrollo y/o aplicación de ideas.'),
(83, 48, 'Conocimientos en diseño de estrategias de comunicación.', 'Conocimientos en diseño de estrategias de comunicación.'),
(84, 48, 'Capacidad de control del plan estratégico comunicación', 'Control de la eficiencia y evaluación de la  eficacia del plan de estrategico'),
(85, 48, 'Estratégia de comunicación', 'Estrategias de comunicación de márketing integral (IMC) y nuevas tecnologías en la comunicación en las organizaciones'),
(86, 48, 'Integrar internet en la estrategia de marketing de la organización.', 'Integrar internet en la estrategia de marketing de la organización'),
(87, 48, 'Conocer los procesos de comunicación en internet', 'Conocer los procesos de comunicación en internet'),
(88, 48, ' Desarrollar proyectos de comunicación de marketing ', ' Desarrollar proyectos de comunicación de marketing '),
(89, 48, 'Diseñar y desarrollar planes integrales de comunicación de marketing.', 'Diseñar y desarrollar planes integrales de comunicación de marketing'),
(90, 49, 'Conocimiento en las técnicas de diseño y desarrollo de soportes digitales', 'Conocimiento en las técnicas de diseño y desarrollo de soportes digitales como blogs y páginas web, entre otros.'),
(91, 48, 'Emprender iniciativas de marketing en la práctica real.', 'Habilidades y conocimientos para emprender iniciativas de marketing en la práctica real.'),
(92, 48, 'Generar eficiencia comunicativa en los discursos orales, escritos', 'Generar eficiencia comunicativa en los discursos orales, escritos.'),
(93, 50, 'Capacidad de gestión de la marca', '\r\n Tomar decisiones de marca y gestionar la marca'),
(94, 51, 'Conocimiento de herramientas de comunicación social', 'Aplicar a proyectos empresariales las herramientas de comunicación social.'),
(95, 48, 'Capacidad de control de la información', ' Buscar, identificar, organizar y utilizar adecuadamente la información.'),
(96, 52, ' Construir páginas web', 'Construir páginas web en varios programas partiendo desde plantillas o desde cero.'),
(97, 52, 'Integrar componentes software en páginas web', 'Integrar componentes software en páginas web'),
(98, 52, ' Publicar páginas web', ' Publicar páginas web'),
(99, 53, 'Desarrollar elementos software en el entorno cliente', 'Desarrollar elementos software en el entorno cliente\r\n'),
(100, 53, 'Desarrollar elementos software en el entorno servidor', 'Desarrollar elementos software en el entorno servidor'),
(101, 54, 'Capacidad operar en el proceso gráfico', 'Operar en el proceso gráfico en condiciones de seguridad, calidad y productividad'),
(102, 54, 'Realizar el tratamiento de imágenes', 'Digitalizar y realizar el tratamiento de imágenes mediante aplicaciones informáticas'),
(103, 54, 'Capacidad de tratamiento de texto', 'Digitalizar y tratar textos mediante aplicaciones informáticas'),
(104, 54, 'Realizar la maquetación de productos gráficos', 'Realizar la maquetación y/o compaginación de productos gráficos'),
(105, 54, 'Tratamiento de imágenes digitales', 'Tratamiento de imágenes digitales'),
(106, 55, 'Diseño de productos gráficos', 'Diseño de productos gráficos'),
(107, 55, 'Creación de elementos gráficos', 'Tratar imágenes y crear elementos gráficos con los parámetros de gestión del color adecuados'),
(108, 55, 'Capacidad de componer elementos gráficos', 'Componer elementos gráficos, imágenes y textos según la teoría de la arquitectura tipográfica y la maquetación'),
(109, 55, 'Capacidad de verificación final de elementos', 'Preparar y verificar artes finales para su distribución'),
(110, 55, 'Arquitectura tipográfica y maquetación', 'Arquitectura tipográfica y maquetación'),
(111, 56, 'Administrar los dispositivos hardware del sistema', 'Administrar los dispositivos hardware del sistema'),
(112, 56, 'administrar el software de base y de aplicación del sistema', 'Instalar, configurar y administrar el software de base y de aplicación del sistema'),
(113, 56, 'Seguridad en equipos informáticos', 'Seguridad en equipos informáticos'),
(114, 57, 'Auditar redes de comunicación', 'Auditar redes de comunicación y sistemas informáticos\r\n'),
(115, 57, 'Capacidad de detección de incidentes de seguridad', 'Detectar y responder ante incidentes de seguridad'),
(116, 57, 'Diseñar e implementar sistemas seguros de acceso y transmisión de datos ', 'Diseñar e implementar sistemas seguros de acceso y transmisión de datos '),
(117, 57, 'Gestionar servicios en el sistema informático', 'Gestionar servicios en el sistema informático'),
(118, 58, 'Capacidad de consulta de información', 'Consultar y extraer información de distintas plataformas de almacenamiento de datos.\r\n'),
(119, 58, 'Crear y gestionar repositorios de contenidos.', 'Crear y gestionar repositorios de contenidos.\r\n'),
(120, 58, 'Administrar el sistema de gestión de información', 'Administrar el sistema de gestión de información.'),
(121, 59, 'Instalar y configurar sistemas de planificación', 'Instalar y configurar sistemas de planificación de recursos empresariales y de gestión de\r\nrelaciones con clientes\r\n'),
(122, 59, 'Administrar sistemas de planificación de recursos empresariales', 'Administrar sistemas de planificación de recursos empresariales y de gestión de relaciones con clientes'),
(123, 59, 'Mantener componentes software en un sistema de planificación de recursos', 'Realizar y mantener componentes software en un sistema de planificación de recursos empresariales y de gestión de relaciones con clientes'),
(124, 53, 'Documentar aplicaciones web en entornos internet', 'Implementar, verificar y documentar aplicaciones web en entornos internet, intranet y extranet'),
(125, 60, 'Desarrollar componentes  Software', 'Desarrollar componentes  Software en Lenguajes de programación estructurada.'),
(126, 60, 'Configurar y explotar sistemas informáticos', 'Configurar y explotar sistemas informáticos'),
(127, 60, 'Programar bases de datos relacionales', 'Programar bases de datos relacionales'),
(128, 61, 'Gestionar servicios en el sistema informático', 'Gestionar servicios en el sistema informático'),
(129, 61, 'Crear elementos software para la gestión del sistema', 'Crear elementos software para la gestión del sistema y sus recursos'),
(130, 61, 'Uso de tecnologías de programación basada en componentes', 'Desarrollar elementos software con tecnologías de programación basada en componentes'),
(131, 62, 'Gestión de información de mercados', 'Obtener y elaborar información para el sistema de información de mercados'),
(132, 62, 'Definición de políticas y plan de marketing', 'Asistir en la definición y seguimiento de las políticas y plan de marketing'),
(133, 62, 'Gestión de lanzamiento de nuevos productos', 'Gestionar el lanzamiento e implantación de productos y servicios en el mercado.'),
(134, 62, 'Gestionar eventos de marketing y comunicación', ' Organizar y gestionar eventos de marketing y comunicación, siguiendo el protocolo y criterios establecidos.'),
(135, 62, 'Organización del Plan de medios', 'Asistir en la organización y seguimiento del plan de medios y soportes establecido.'),
(136, 62, 'Gestión de publi-promocional e informativo', 'Elaborar y difundir, en diferentes soportes, materiales, sencillos y autoeditables, publi-promocionales e informativos'),
(137, 63, 'Preparación para la investigación de mercados', 'Preparar la información e instrumentos necesarios para la investigación de mercados'),
(138, 63, 'Gestión de encuestadores', 'Organizar y controlar la actividad de los encuestadores.'),
(139, 63, 'Análisis de conclusiones de investigación', 'Realizar encuestas y/o entrevistas utilizando las técnicas  y procedimientos establecidos. Colaborar en el análisis y obtención de conclusiones a partir de la investigación de mercados'),
(140, 64, 'Analisar las necesidades de mercado', 'Analisar las necesidades de mercado'),
(141, 64, 'Diseñar nuevos productos', 'Diseñar de nuevo producto relacionado con las necesidades y el objeto de la empresa'),
(142, 64, 'Diseño de plan de venta', 'Diseñar el \"plan de venta\" del producto'),
(143, 64, 'Análisis de viabilidad de nuevos productos', 'Diseñar el plan de viabilidad del producto'),
(144, 65, 'Capacidad de garantizar la viabilidad del negocio', 'Capacidad de garantizar la viabilidad y sostenibilidad del negocio en el tiempo'),
(145, 65, 'Capacidad de cerar y fijar el marco estratégico', 'Capacidad de cerar y fijar el marco estratégico'),
(146, 65, 'Capacidad de gestión de la planificación', 'Eficencia y eficacia en la gestión y planifcación'),
(147, 65, 'Capacidad de desarrollar el talento y el liderazgo', 'Capacidad de desarrollar el talento y el liderazgo'),
(148, 65, 'Capacidad de definición de politicas estratégicas y de gestión', 'Capacidad de definición de politicas tanto estratégicas como de gestión'),
(149, 66, 'Vigilar  la tecnología disponible en la organización ', 'Vigilar  la tecnología disponible en la organización \r\n'),
(150, 66, 'Detección de necesidades tecnologicas', 'Detección de necesidades tecnologicas\r\n'),
(151, 66, 'Identificación de nuevas oportunidades tecnologicas', 'Identificación de nuevas oportunidades tecnologicas\r\n'),
(152, 66, 'Control de la disponibilidad de información en la organización', 'Control de la disponibilidad de información en la organización\r\n'),
(153, 66, 'Implantación efectiva de los TICs', 'Implantación efectiva de los TICs\r\n'),
(154, 66, 'Alto conocimiento de los sitemas de información y de redes', 'Alto conocimiento de los sitemas de información y de redes\r\n'),
(155, 66, 'Aportar la visión técnica al plan estratégico de la organización', 'Aportar la visión técnica al plan estratégico de la organización\r\n'),
(156, 66, 'Vigilar la seguridad de la información', 'Vigilar la seguridad de la información\r\n'),
(157, 66, 'Liderar la integración de la tecnologia en la organización', 'Liderar la integración de la tecnologia con las personas, los procesos y los proyectos'),
(158, 67, 'Diseñar y realizar aplicaciones informáticas para mejorar la gestión', 'Diseñar y realizar aplicaciones informáticas para mejorar la gestión\r\n'),
(159, 67, 'Desarrollar la visión tecnológica para los negocios', 'Desarrollar la visión tecnológica para los negocios\r\n'),
(160, 67, 'Desarrollar la tecnologia del futuro', 'Desarrollar la tecnologia del futuro\r\n'),
(161, 67, 'Aportar soluciones innovadoras a los proyectos', 'Aportar soluciones innovadoras a los proyectos\r\n'),
(162, 67, 'Creación de oportunidades de negocio', 'Creación de oportunidades de negocio'),
(163, 68, 'Evaluación de proyectos', 'Evaluación de los nuevos proyectos identificados para ver la adaptabilidad al departamento o capacidad de realización.'),
(164, 68, 'Identificación nuevas convocatorias', 'Identificación de convocatorias nacionales e internacionales que se adapten a los objetivos del departamento'),
(165, 69, 'Capacidad de Preparación documentación técnica de proyectos', 'Capacidad de Preparación documentación técnica de proyectos de licitaciones presentadas y su justificación'),
(166, 70, 'Capacidad de realización de las tareas encomendadas', 'Capacidad de realización de las tareas encomendadas por el tencico en tiempo y forma'),
(167, 71, 'Realización de auditorias', ' Realizar de auditoria de proyectos, internas, de proveedores'),
(168, 72, 'Capacidad de análisis  proveedores', 'Controlar la capacidad del proveedor / colaborador de realizar las tareas necesarias. \r\nHomologación / deshomologación en función del cumplimiento de plazos y capacidad de realización de tareas.'),
(169, 73, 'Apoyo Plan Estratégico', '• Realizar Informe ventas por departamentos\r\n• Controlar de los Indicadores evolución anual\r\n• Controlar los planes de calidad'),
(170, 74, 'Mantenimiento de la documentación', 'Mantenimiento de la documentación y los registros de calidad correspondientes a los proyectos, al sistema de gestión o genéricas de la organización. \r\nElaborar/modificar / revisar la documentación '),
(171, 75, 'Control de proveedores', 'Controlar la conformidad del producto o servicio suministrado por el proveedor.\r\nAnalizar el cumplimiento y tendencia del proveedor en función de ');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_clasificacion`
--

CREATE TABLE `tipo_clasificacion` (
  `id_tipo_clasificacion` int(11) NOT NULL,
  `tipo_clasificacion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_clasificacion`
--

INSERT INTO `tipo_clasificacion` (`id_tipo_clasificacion`, `tipo_clasificacion`) VALUES
(1, 'Digitales'),
(2, 'Genéricas'),
(3, 'Técnicas'),
(4, 'Otras');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `id_tipo_competencia` int(11) NOT NULL,
  `tipo_competencia` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_competencia`
--

INSERT INTO `tipo_competencia` (`id_tipo_competencia`, `tipo_competencia`) VALUES
(1, 'Genericas'),
(2, 'del puesto'),
(5, 'Digitales'),
(6, 'Transversales'),
(7, 'Directivo'),
(8, 'Técnico'),
(9, 'Especificas');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_nivel`
--

CREATE TABLE `tipo_nivel` (
  `id_tipo_nivel` int(11) NOT NULL,
  `tipo_nivel` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_nivel`
--

INSERT INTO `tipo_nivel` (`id_tipo_nivel`, `tipo_nivel`) VALUES
(1, 'Nunca'),
(2, 'A veces'),
(3, 'A menudo'),
(4, 'Muy a menudo'),
(5, 'Siempre');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Active;2:Desactive;'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `rol`, `add_date`, `last_login`, `active`) VALUES
(1, 'jmoreno', 'uD4CmxuO6Vi+wlkqXHJZMQ3s2v2Xob1Uzirz', 'jmoreno@mainfor.es', 1, '2014-05-21 09:00:00', '2018-12-17 23:58:07', 1),
(2, 'mjmorales', 'w3LmuXg8NVymkzunx2zxSn5fROLL4V9qrpkyYiPi', 'mjmorales@mainfor.es', 1, '2014-10-01 12:35:34', '2019-04-15 15:16:22', 1),
(3, 'hsosa', 'M4Kq8B9axzldfPwBTMJCgSxDslpEQUt/weXXXIo=', 'hsosa@mainfor.es', 1, '2014-10-01 16:30:17', '2014-10-01 16:39:30', 2),
(4, 'lruizg', '2wMC70yPbpXZc9AVFZs9TwLW0FDyg6c7hiI=', 'lruizg@mainfor.es', 2, '2014-10-01 16:59:44', '2018-11-20 12:17:16', 1),
(5, 'teo', 'SGmJ9ZBsVW9Eg6ZzlPuUTaMe7MF5/jY=', 'tjinga@gothicaconsulting.com', 1, '2015-01-07 11:25:17', '2017-12-20 17:19:00', 1),
(6, 'rfernandez', 'mxbRVFKFulcrUDjpB8HglbZnHLeThWiHhCC9cK0=', 'rfernandez@mainfor.edu.es', 1, '2016-08-29 13:13:08', '2019-05-08 18:26:18', 1),
(7, 'evillalon', 'VaerkVolvGEhNQmYV9QjfVctgQldNBJCjIC7X6BH', 'evillalon@mainfor.edu.es', 1, '2017-01-11 14:18:17', '2017-01-11 18:14:31', 1),
(8, 'lmarting', 'pmxE/T7zfGVsa//YHQL4YUjK+eeu//0u6FZ7T+k=', 'lmarting@mainfor.edu.es', 1, '2018-10-24 13:16:33', '2019-01-08 13:20:13', 1),
(17, 'lmarting3', '3tJaxgxG1E03D3RfYxIG0/1ysATWQeMV2uPTZ7I=', 'lauramgf@hotmail.com', 3, '2018-11-20 14:32:18', '2018-11-20 14:32:25', 1),
(18, 'rgomez', '7i0CC6b42FLoEPwZhp0Ze0sAG7HmvrvYcF3fdW8=', 'rgomez@grupomainjobs.com', 2, '2019-05-08 18:24:41', '2019-05-08 18:42:35', 1),
(14, 'lmarting2', '45/45lmx4xrGw+nrqSZcrmr+L73oDFwyhRf3eg==', 'lmarting@mainfor.es', 2, '2018-11-20 11:57:49', '2018-11-20 12:39:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id_active`),
  ADD UNIQUE KEY `active` (`active`);

--
-- Indexes for table `alertas`
--
ALTER TABLE `alertas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria_profesional`
--
ALTER TABLE `categoria_profesional`
  ADD PRIMARY KEY (`id_categoria_profesional`),
  ADD UNIQUE KEY `categoria_profesional` (`categoria_profesional`);

--
-- Indexes for table `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD UNIQUE KEY `competencia` (`id_tipo_competencia`,`competencia`);

--
-- Indexes for table `comunidad_autonoma`
--
ALTER TABLE `comunidad_autonoma`
  ADD PRIMARY KEY (`id_comunidad_autonoma`),
  ADD UNIQUE KEY `comunidad_autonoma` (`comunidad_autonoma`,`id_pais`);

--
-- Indexes for table `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD UNIQUE KEY `contrato` (`contrato`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`),
  ADD UNIQUE KEY `departamento` (`departamento`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_contact`
--
ALTER TABLE `employees_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_curriculum`
--
ALTER TABLE `employees_curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_experience`
--
ALTER TABLE `employees_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_salary`
--
ALTER TABLE `employees_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_trainingplan`
--
ALTER TABLE `employees_trainingplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_work`
--
ALTER TABLE `employees_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_work_doc`
--
ALTER TABLE `employees_work_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enlace`
--
ALTER TABLE `enlace`
  ADD PRIMARY KEY (`id_enlace`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id_estado_civil`),
  ADD UNIQUE KEY `estado_civil` (`estado_civil`);

--
-- Indexes for table `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id_estudio`),
  ADD UNIQUE KEY `estudio` (`estudio`);

--
-- Indexes for table `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id_formacion`),
  ADD UNIQUE KEY `formacion` (`formacion`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`),
  ADD UNIQUE KEY `horario` (`horario`);

--
-- Indexes for table `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`id_linea`),
  ADD UNIQUE KEY `linea` (`linea`,`nivel`);

--
-- Indexes for table `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id_modalidad`),
  ADD UNIQUE KEY `modalidad` (`modalidad`);

--
-- Indexes for table `modulefeatures`
--
ALTER TABLE `modulefeatures`
  ADD PRIMARY KEY (`id_modulefeatures`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_modules`);

--
-- Indexes for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`id_notificacion`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `pais` (`pais`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD UNIQUE KEY `provincia` (`provincia`,`id_comunidad_autonoma`);

--
-- Indexes for table `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`id_puesto`),
  ADD UNIQUE KEY `puesto` (`puesto`);

--
-- Indexes for table `roleaction`
--
ALTER TABLE `roleaction`
  ADD PRIMARY KEY (`id_roleaction`);

--
-- Indexes for table `rolefeatures`
--
ALTER TABLE `rolefeatures`
  ADD PRIMARY KEY (`id_rolefeatures`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indexes for table `subcompetencia`
--
ALTER TABLE `subcompetencia`
  ADD PRIMARY KEY (`id_subcompetencia`),
  ADD UNIQUE KEY `subcompetencia` (`id_competencia`,`subcompetencia`);

--
-- Indexes for table `tipo_clasificacion`
--
ALTER TABLE `tipo_clasificacion`
  ADD PRIMARY KEY (`id_tipo_clasificacion`),
  ADD UNIQUE KEY `tipo_clasificacion` (`tipo_clasificacion`);

--
-- Indexes for table `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`id_tipo_competencia`),
  ADD UNIQUE KEY `tipo_competencia` (`tipo_competencia`);

--
-- Indexes for table `tipo_nivel`
--
ALTER TABLE `tipo_nivel`
  ADD PRIMARY KEY (`id_tipo_nivel`),
  ADD UNIQUE KEY `tipo_nivel` (`tipo_nivel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active`
--
ALTER TABLE `active`
  MODIFY `id_active` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alertas`
--
ALTER TABLE `alertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoria_profesional`
--
ALTER TABLE `categoria_profesional`
  MODIFY `id_categoria_profesional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `competencia`
--
ALTER TABLE `competencia`
  MODIFY `id_competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `comunidad_autonoma`
--
ALTER TABLE `comunidad_autonoma`
  MODIFY `id_comunidad_autonoma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employees_contact`
--
ALTER TABLE `employees_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees_curriculum`
--
ALTER TABLE `employees_curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees_experience`
--
ALTER TABLE `employees_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees_salary`
--
ALTER TABLE `employees_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees_trainingplan`
--
ALTER TABLE `employees_trainingplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees_work`
--
ALTER TABLE `employees_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees_work_doc`
--
ALTER TABLE `employees_work_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enlace`
--
ALTER TABLE `enlace`
  MODIFY `id_enlace` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `formacion`
--
ALTER TABLE `formacion`
  MODIFY `id_formacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `linea`
--
ALTER TABLE `linea`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `id_modalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id_modules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `puesto`
--
ALTER TABLE `puesto`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roleaction`
--
ALTER TABLE `roleaction`
  MODIFY `id_roleaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `rolefeatures`
--
ALTER TABLE `rolefeatures`
  MODIFY `id_rolefeatures` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcompetencia`
--
ALTER TABLE `subcompetencia`
  MODIFY `id_subcompetencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `tipo_clasificacion`
--
ALTER TABLE `tipo_clasificacion`
  MODIFY `id_tipo_clasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  MODIFY `id_tipo_competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tipo_nivel`
--
ALTER TABLE `tipo_nivel`
  MODIFY `id_tipo_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
