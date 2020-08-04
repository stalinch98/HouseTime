-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2020 a las 08:14:13
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_integrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_anuncios`
--

CREATE TABLE `admins_anuncios` (
  `id_anuncio` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `ambientes` varchar(200) NOT NULL,
  `cantidad_ambientes` varchar(20) NOT NULL,
  `servicios` varchar(200) NOT NULL,
  `max_personas` int(11) NOT NULL,
  `precio_dia` double NOT NULL,
  `reservado` tinyint(1) DEFAULT NULL,
  `oferta` tinyint(1) DEFAULT NULL,
  `fecha_maxima` date DEFAULT NULL,
  `precio_oferta` double DEFAULT NULL,
  `id_imagen` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_anuncios`
--

INSERT INTO `admins_anuncios` (`id_anuncio`, `titulo`, `descripcion`, `ambientes`, `cantidad_ambientes`, `servicios`, `max_personas`, `precio_dia`, `reservado`, `oferta`, `fecha_maxima`, `precio_oferta`, `id_imagen`, `id_tipo`, `id_ubicacion`) VALUES
(1, 'Departamento en Pedernales', 'La mejor experiencia la vives en Pedernales. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '3,2,1', 'Wifi,Parqueadero,Piscina', 5, 50, 0, 0, NULL, NULL, 1, 2, 1),
(2, 'Departamento en Malecon de Pedernales', 'La mejor experiencia la vives en Pedernales. Disfruta de un departamento unico en el Malecon de Pedernales, la mejor ubicacion para estar conectado con toda la ciudad.', 'habitaciones,baños,cocina,sala', '4,2,1,1', 'Wifi,Parqueadero,Piscina,Sauna', 2, 60, 0, 1, '2020-08-06', 50, 2, 2, 2),
(3, 'Departamento en el Centro de Pedernales', 'Pedernales es mas que una playa, por ello aprovecha de este exelente lugar con un departamento ubicado en pleno centro de la ciudad, cerca de todo para aprovechar al maximo lo que te ofrece el lugar.', 'habitaciones,baños,cocina', '3,1,1', 'Parqueadero,Piscina', 3, 45, 0, 1, '2020-08-05', 39, 3, 2, 3),
(4, 'Departamento en Atacames', 'Disdruta del mar,olas y la fiesta que se arma en Atacamens. Disfruta de una casa unica en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina,sala', '3,2,1,1', 'Wifi,Parqueadero,Piscina,Sauna', 4, 48, 0, 1, '2020-08-12', 40, 4, 1, 4),
(5, 'Casa en Sua-Esmeraldas', 'Viajas a SUA?. Definitivamente este es el lugar ideal para ti, la mejor experiencia en el mejor lugar y al mejor precio disgruta de esta casa ubicada a metros de la playa y disftura con comodidad', 'habitaciones,baños,cocina,sala', '2,1,1,1', 'Wifi,Parqueadero,Piscina', 6, 80, 0, 0, NULL, NULL, 5, 1, 5),
(6, 'Casa en Santa Cruz-Galapagos', 'Galapagos es un lugar unico y maravilloso y que mejor manera de vivir al disfrutar al maximo del lugar hospedandote en el mejor lugar. Disfruta de esta casa y Reserva YA.', 'habitaciones,baños,cocina,sala', '3,1,1,1', 'Wifi,Parqueadero,Piscina', 5, 65, 0, 0, NULL, NULL, 6, 1, 6),
(7, 'Departamento en Isla Isabela-Galapagos', 'La mejor experiencia en Galapagos. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '4,2,1', 'Wifi,Parqueadero,Piscina,TV-Cable', 5, 90, 0, 0, NULL, NULL, 7, 2, 7),
(8, 'Casa en el Puyo', 'La mejor experiencia la vives en la Amazonia. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de la fauna y flora que te brinda el lugar', 'habitaciones,baños,cocina,sala', '3,2,1,1', 'Wifi,Parqueadero,Piscina,Room Service', 3, 65, 0, 0, NULL, NULL, 8, 1, 8),
(9, 'Departamento en el Puyo', 'La mejor experiencia la vives en la Amazonia. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de la fauna y flora que te brinda este lugar.', 'habitaciones,baños,cocina', '4,2,1', 'Parqueadero,Piscina,TV-Cable,Hidromasaje', 5, 50, 0, 0, NULL, NULL, 9, 2, 9),
(10, 'Departamento en Loja', 'La mejor experiencia la vives en Loja. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '3,2,1', 'Wifi,Parqueadero,Hidromasaje', 3, 40, 0, 0, NULL, NULL, 10, 2, 10),
(11, 'Departamento en El valle-Quito', 'Tienes viaje de negocios en la capital?. Disfruta de un departamento unico en la zona mas exclusiva del lugar,hacer de tu instancia un momento agradable e inolvidable en este departamento sera facil.', 'habitaciones,baños,cocina', '3,1,1', 'Wifi,Parqueadero,TV-Cable', 3, 60, 0, 0, NULL, NULL, 11, 2, 11),
(12, 'Departamento en Ibarra', 'La mejor experiencia la vives en Ibarra. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '3,2,1', 'Parqueadero,Piscina,Turco,Room Service\'', 5, 60, 0, 0, NULL, NULL, 12, 2, 12),
(13, 'Departamento en Cuenca', 'La mejor experiencia la vives en Cuenca. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '4,2,1', 'Wifi,Parqueadero,Piscina', 5, 50, 0, 0, NULL, NULL, 13, 2, 13),
(14, 'Casa en Guayaquil', 'La mejor experiencia la vives en Guayaquil. Disfruta de casa unica en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina,sala', '3,1,1,1', 'Parqueadero,Piscina,Hidromasaje', 5, 50, 0, 0, NULL, NULL, 14, 1, 14),
(15, 'Departamento en El Pangui', 'La mejor experiencia la vives en Zamora Chinchipe. Disfruta de un departamento unico en la zona mas exclusiva del lugar, donde tu y tu familia podran disfrutar de este maravilloso lugar.', 'habitaciones,baños,cocina', '2,2,1', 'Wifi,Parqueadero,Piscina', 4, 65, 0, 0, NULL, NULL, 15, 2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_blog`
--

CREATE TABLE `admins_blog` (
  `id_blog` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `comentarios` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_blog`
--

INSERT INTO `admins_blog` (`id_blog`, `nombre_usuario`, `comentarios`) VALUES
(1, 'Stalin', 'Demas sitio web se pasaron!!!....'),
(2, 'Alfredo', 'Vamos a vivir'),
(3, 'Jorge', 'Muchos programadores tienen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_contacto`
--

CREATE TABLE `admins_contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_contacto`
--

INSERT INTO `admins_contacto` (`id_contacto`, `nombre_usuario`, `celular`, `email`, `mensaje`) VALUES
(1, 'Stalin', '0995882909', 'stalin.dany98@gmail.com', 'Ya vale la huevada'),
(2, 'stalin', '0987654321', 'thefurok@gmail.com', 'Aun vale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_cotizar`
--

CREATE TABLE `admins_cotizar` (
  `id_cotizar` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cedula` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `opciones` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_cotizar`
--

INSERT INTO `admins_cotizar` (`id_cotizar`, `nombre`, `apellido`, `cedula`, `correo`, `opciones`) VALUES
(8, 'Stalin', 'Chiguano', 1725049421, 'Stalin', '[\'Piscina\', \'Wifi\', \'Room-Service\']'),
(9, 'Stalin', 'Chiguano', 1725049421, 'Stalin', '[\'Piscina\', \'Parqueadero\', \'Wifi\']');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_empresa`
--

CREATE TABLE `admins_empresa` (
  `id` int(11) NOT NULL,
  `mision` varchar(500) NOT NULL,
  `vision` varchar(500) NOT NULL,
  `descripcion_blog` varchar(500) NOT NULL,
  `nombre_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_empresa`
--

INSERT INTO `admins_empresa` (`id`, `mision`, `vision`, `descripcion_blog`, `nombre_logo`) VALUES
(1, 'La empresa brinda una asistencia profesional a todos aquellos que necesiten de un servicio de alojamiento en sus viajes. El esfuerzo de la empresa se centrara en brindar las mejores opciones en las que la comodidad y satisfaccion a nuestros                     clientes sean pilar fundamental del trabajo realizado por cada uno de los integrantes de la empresa quienes con el mejor asesoramiento,compromiso,precio,solucion de posibles inconvenientes (antes, durante o despues de cada alojamiento).', 'Promover el crecimiento sustentable de la empresa, basado en la innovacion permanente tanto en la prestacion de servicios, el acercamiento a los clientes, la calidad de informacion brindada, el asesoramiento adecuado para cada necesidad.                     Lograr una empresa que sea flexible a los cambios que el mercado y los clientes requieren. Fortalecer en forma constante la inversion en tecnología para el desarollo de nuestra actividad consolidandonos como una la mejor empresa nacional.', 'En HouseTime nos preocupamos por mejorar cada dia, Cuentanos como fue tu experiencia!', 'logo_oficial.svg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_imagen`
--

CREATE TABLE `admins_imagen` (
  `id_imagen` int(11) NOT NULL,
  `nombre_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_imagen`
--

INSERT INTO `admins_imagen` (`id_imagen`, `nombre_imagen`) VALUES
(1, 'admins/photos/p1.PNG'),
(2, 'admins/photos/p2.PNG'),
(3, 'admins/photos/p3.PNG'),
(4, 'admins/photos/p4.PNG'),
(5, 'admins/photos/p5.PNG'),
(6, 'admins/photos/p6.PNG'),
(7, 'admins/photos/p7.PNG'),
(8, 'admins/photos/p8.PNG'),
(9, 'admins/photos/p9.PNG'),
(10, 'admins/photos/p10.PNG'),
(11, 'admins/photos/p11.PNG'),
(12, 'admins/photos/p12.PNG'),
(13, 'admins/photos/p13.PNG'),
(14, 'admins/photos/p14.PNG'),
(15, 'admins/photos/p15.PNG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_reserva`
--

CREATE TABLE `admins_reserva` (
  `id_reserva` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `n_adultos` int(11) NOT NULL,
  `n_ninos` int(11) DEFAULT NULL,
  `n_dias` int(11) NOT NULL,
  `precio_total` double NOT NULL,
  `id_anuncio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_reserva`
--

INSERT INTO `admins_reserva` (`id_reserva`, `nombre`, `cedula`, `telefono`, `n_adultos`, `n_ninos`, `n_dias`, `precio_total`, `id_anuncio`) VALUES
(17, 'Stalin Chiguano', 1725049421, 995882909, 3, 0, 3, 117, 3),
(18, 'Stalin Chiguano', 1725049421, 995882909, 3, 0, 3, 195, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_subimagenes`
--

CREATE TABLE `admins_subimagenes` (
  `id_sub_imagen` int(11) NOT NULL,
  `nombre_imagen` varchar(100) NOT NULL,
  `id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_subimagenes`
--

INSERT INTO `admins_subimagenes` (`id_sub_imagen`, `nombre_imagen`, `id_imagen`) VALUES
(1, 'admins/photos/sp1_1.PNG', 1),
(2, 'admins/photos/sp1_2.PNG', 1),
(3, 'admins/photos/sp1_3.PNG', 1),
(4, 'admins/photos/sp1_4.PNG', 1),
(5, 'admins/photos/sp1_5.PNG', 1),
(6, 'admins/photos/sp2_1.PNG', 2),
(7, 'admins/photos/sp2_2.PNG', 2),
(8, 'admins/photos/sp2_3.PNG', 2),
(9, 'admins/photos/sp2_4.PNG', 2),
(10, 'admins/photos/sp2_5.PNG', 2),
(11, 'admins/photos/sp3_1.PNG', 3),
(12, 'admins/photos/sp3_2.PNG', 3),
(13, 'admins/photos/sp3_3.PNG', 3),
(14, 'admins/photos/sp3_4.PNG', 3),
(15, 'admins/photos/sp3_5.PNG', 3),
(16, 'admins/photos/sp4_1.PNG', 4),
(17, 'admins/photos/sp4_2.PNG', 4),
(18, 'admins/photos/sp4_3.PNG', 4),
(19, 'admins/photos/sp4_4.PNG', 4),
(20, 'admins/photos/sp4_5.PNG', 4),
(21, 'admins/photos/sp5_1.PNG', 5),
(22, 'admins/photos/sp5_2.PNG', 5),
(23, 'admins/photos/sp5_3.PNG', 5),
(24, 'admins/photos/sp5_4.PNG', 5),
(25, 'admins/photos/sp5_5.PNG', 5),
(26, 'admins/photos/sp6_1.PNG', 6),
(27, 'admins/photos/sp6_2.PNG', 6),
(28, 'admins/photos/sp6_3.PNG', 6),
(29, 'admins/photos/sp6_4.PNG', 6),
(30, 'admins/photos/sp6_5.PNG', 6),
(31, 'admins/photos/sp7_1.PNG', 7),
(32, 'admins/photos/sp7_2.PNG', 7),
(33, 'admins/photos/sp7_3.PNG', 7),
(34, 'admins/photos/sp7_4.PNG', 7),
(35, 'admins/photos/sp7_5.PNG', 7),
(36, 'admins/photos/sp8_1.PNG', 8),
(37, 'admins/photos/sp8_2.PNG', 8),
(38, 'admins/photos/sp8_3.PNG', 8),
(39, 'admins/photos/sp8_4.PNG', 8),
(40, 'admins/photos/sp8_5.PNG', 8),
(41, 'admins/photos/sp9_1.PNG', 9),
(42, 'admins/photos/sp9_2.PNG', 9),
(43, 'admins/photos/sp9_3.PNG', 9),
(44, 'admins/photos/sp9_4.PNG', 9),
(45, 'admins/photos/sp9_5.PNG', 9),
(46, 'admins/photos/sp10_1.PNG', 10),
(47, 'admins/photos/sp10_2.PNG', 10),
(48, 'admins/photos/sp10_3.PNG', 10),
(49, 'admins/photos/sp10_4.PNG', 10),
(50, 'admins/photos/sp10_5.PNG', 10),
(51, 'admins/photos/sp11_1.PNG', 11),
(52, 'admins/photos/sp11_2.PNG', 11),
(53, 'admins/photos/sp11_3.PNG', 11),
(54, 'admins/photos/sp11_4.PNG', 11),
(55, 'admins/photos/sp11_5.PNG', 11),
(56, 'admins/photos/sp12_1.PNG', 12),
(57, 'admins/photos/sp12_2.PNG', 12),
(58, 'admins/photos/sp12_3.PNG', 12),
(59, 'admins/photos/sp12_4.PNG', 12),
(60, 'admins/photos/sp12_5.PNG', 12),
(61, 'admins/photos/sp13_1.PNG', 13),
(62, 'admins/photos/sp13_2.PNG', 13),
(63, 'admins/photos/sp13_3.PNG', 13),
(64, 'admins/photos/sp13_4.PNG', 13),
(65, 'admins/photos/sp13_5.PNG', 13),
(66, 'admins/photos/sp14_1.PNG', 14),
(67, 'admins/photos/sp14_2.PNG', 14),
(68, 'admins/photos/sp14_3.PNG', 14),
(69, 'admins/photos/sp14_4.PNG', 14),
(70, 'admins/photos/sp14_5.PNG', 14),
(71, 'admins/photos/sp15_1.PNG', 15),
(72, 'admins/photos/sp15_2.PNG', 15),
(73, 'admins/photos/sp15_3.PNG', 15),
(74, 'admins/photos/sp15_4.PNG', 15),
(75, 'admins/photos/sp15_5.PNG', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_tipo`
--

CREATE TABLE `admins_tipo` (
  `id_tipo` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_tipo`
--

INSERT INTO `admins_tipo` (`id_tipo`, `descripcion`) VALUES
(1, 'Casa'),
(2, 'Departamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins_ubicacion`
--

CREATE TABLE `admins_ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `nombre_ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins_ubicacion`
--

INSERT INTO `admins_ubicacion` (`id_ubicacion`, `latitud`, `longitud`, `nombre_ubicacion`) VALUES
(1, 0.071452, -80.057689, 'Manabi Pedernales'),
(2, 0.078154, -80.055315, 'Manabi Malecón Pedernales'),
(3, 0.07824, -80.052895, 'Manabi Pedernales'),
(4, 0.866782, -79.860563, 'Esmeraldas Atacames'),
(5, 0.863606, -79.872515, 'Esmeraldas Súa'),
(6, -0.739512, -90.311471, 'Galapagos Isla Santa Cruz'),
(7, -0.952786, -90.966315, 'Galapagos Isla Isabela'),
(8, -1.486785, -78.000868, 'Pastaza Puyo'),
(9, -1.489434, -78.000441, 'Pastaza Puyo'),
(10, -4.019504, -79.207917, 'Loja Loja'),
(11, -0.173849, -78.423197, 'Quito El Valle'),
(12, 0.351285, -78.11922, 'Ibarra Parque La Merced'),
(13, -2.891507, -78.989218, 'Cuenca La Castellana'),
(14, -2.14441, -79.934042, 'Guayaquil Santa María'),
(15, -3.626715, -78.587132, 'Zamora Chinchipe El Pangui');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add anuncios', 7, 'add_anuncios'),
(26, 'Can change anuncios', 7, 'change_anuncios'),
(27, 'Can delete anuncios', 7, 'delete_anuncios'),
(28, 'Can view anuncios', 7, 'view_anuncios'),
(29, 'Can add blog', 8, 'add_blog'),
(30, 'Can change blog', 8, 'change_blog'),
(31, 'Can delete blog', 8, 'delete_blog'),
(32, 'Can view blog', 8, 'view_blog'),
(33, 'Can add contacto', 9, 'add_contacto'),
(34, 'Can change contacto', 9, 'change_contacto'),
(35, 'Can delete contacto', 9, 'delete_contacto'),
(36, 'Can view contacto', 9, 'view_contacto'),
(37, 'Can add cotizar', 10, 'add_cotizar'),
(38, 'Can change cotizar', 10, 'change_cotizar'),
(39, 'Can delete cotizar', 10, 'delete_cotizar'),
(40, 'Can view cotizar', 10, 'view_cotizar'),
(41, 'Can add empresa', 11, 'add_empresa'),
(42, 'Can change empresa', 11, 'change_empresa'),
(43, 'Can delete empresa', 11, 'delete_empresa'),
(44, 'Can view empresa', 11, 'view_empresa'),
(45, 'Can add imagen', 12, 'add_imagen'),
(46, 'Can change imagen', 12, 'change_imagen'),
(47, 'Can delete imagen', 12, 'delete_imagen'),
(48, 'Can view imagen', 12, 'view_imagen'),
(49, 'Can add tipo', 13, 'add_tipo'),
(50, 'Can change tipo', 13, 'change_tipo'),
(51, 'Can delete tipo', 13, 'delete_tipo'),
(52, 'Can view tipo', 13, 'view_tipo'),
(53, 'Can add ubicacion', 14, 'add_ubicacion'),
(54, 'Can change ubicacion', 14, 'change_ubicacion'),
(55, 'Can delete ubicacion', 14, 'delete_ubicacion'),
(56, 'Can view ubicacion', 14, 'view_ubicacion'),
(57, 'Can add sub imagenes', 15, 'add_subimagenes'),
(58, 'Can change sub imagenes', 15, 'change_subimagenes'),
(59, 'Can delete sub imagenes', 15, 'delete_subimagenes'),
(60, 'Can view sub imagenes', 15, 'view_subimagenes'),
(61, 'Can add reserva', 16, 'add_reserva'),
(62, 'Can change reserva', 16, 'change_reserva'),
(63, 'Can delete reserva', 16, 'delete_reserva'),
(64, 'Can view reserva', 16, 'view_reserva'),
(65, 'Can add PayPal IPN', 17, 'add_paypalipn'),
(66, 'Can change PayPal IPN', 17, 'change_paypalipn'),
(67, 'Can delete PayPal IPN', 17, 'delete_paypalipn'),
(68, 'Can view PayPal IPN', 17, 'view_paypalipn');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$LJwNlelrEwpS$Ih+Y4t/7U4UiJzo6r80y9rTY/2dhoeJZTbOPimPPJsM=', '2020-08-01 01:07:05.683729', 1, 'stalin', '', '', 'stalin_dany98@hotmail.com', 1, 1, '2020-08-01 01:06:48.368594');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-01 01:08:22.335149', '1', 'Imagen object (1)', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-08-01 01:09:44.317369', '2', 'Imagen object (2)', 1, '[{\"added\": {}}]', 12, 1),
(3, '2020-08-01 01:09:52.959574', '3', 'Imagen object (3)', 1, '[{\"added\": {}}]', 12, 1),
(4, '2020-08-01 01:10:09.665184', '4', 'Imagen object (4)', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-08-01 01:10:17.495152', '5', 'Imagen object (5)', 1, '[{\"added\": {}}]', 12, 1),
(6, '2020-08-01 01:10:28.993167', '6', 'Imagen object (6)', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-08-01 01:10:37.047583', '7', 'Imagen object (7)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-08-01 01:10:45.997201', '8', 'Imagen object (8)', 1, '[{\"added\": {}}]', 12, 1),
(9, '2020-08-01 01:10:55.490671', '9', 'Imagen object (9)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2020-08-01 01:11:03.010672', '10', 'Imagen object (10)', 1, '[{\"added\": {}}]', 12, 1),
(11, '2020-08-01 01:11:10.713323', '11', 'Imagen object (11)', 1, '[{\"added\": {}}]', 12, 1),
(12, '2020-08-01 01:11:17.943411', '12', 'Imagen object (12)', 1, '[{\"added\": {}}]', 12, 1),
(13, '2020-08-01 01:11:25.888528', '13', 'Imagen object (13)', 1, '[{\"added\": {}}]', 12, 1),
(14, '2020-08-01 01:11:33.404546', '14', 'Imagen object (14)', 1, '[{\"added\": {}}]', 12, 1),
(15, '2020-08-01 01:11:40.969176', '15', 'Imagen object (15)', 1, '[{\"added\": {}}]', 12, 1),
(16, '2020-08-01 03:59:35.910140', '1', 'SubImagenes object (1)', 1, '[{\"added\": {}}]', 15, 1),
(17, '2020-08-01 03:59:49.472805', '2', 'SubImagenes object (2)', 1, '[{\"added\": {}}]', 15, 1),
(18, '2020-08-01 03:59:59.896235', '3', 'SubImagenes object (3)', 1, '[{\"added\": {}}]', 15, 1),
(19, '2020-08-01 04:00:10.554414', '4', 'SubImagenes object (4)', 1, '[{\"added\": {}}]', 15, 1),
(20, '2020-08-01 04:00:21.235477', '5', 'SubImagenes object (5)', 1, '[{\"added\": {}}]', 15, 1),
(21, '2020-08-01 04:01:04.215091', '6', 'SubImagenes object (6)', 1, '[{\"added\": {}}]', 15, 1),
(22, '2020-08-01 04:01:13.320852', '7', 'SubImagenes object (7)', 1, '[{\"added\": {}}]', 15, 1),
(23, '2020-08-01 04:01:23.892455', '8', 'SubImagenes object (8)', 1, '[{\"added\": {}}]', 15, 1),
(24, '2020-08-01 04:01:33.992492', '9', 'SubImagenes object (9)', 1, '[{\"added\": {}}]', 15, 1),
(25, '2020-08-01 04:01:51.841256', '10', 'SubImagenes object (10)', 1, '[{\"added\": {}}]', 15, 1),
(26, '2020-08-01 04:02:21.169347', '11', 'SubImagenes object (11)', 1, '[{\"added\": {}}]', 15, 1),
(27, '2020-08-01 04:02:31.713002', '12', 'SubImagenes object (12)', 1, '[{\"added\": {}}]', 15, 1),
(28, '2020-08-01 04:03:01.715993', '13', 'SubImagenes object (13)', 1, '[{\"added\": {}}]', 15, 1),
(29, '2020-08-01 04:03:17.611626', '14', 'SubImagenes object (14)', 1, '[{\"added\": {}}]', 15, 1),
(30, '2020-08-01 04:03:30.469214', '15', 'SubImagenes object (15)', 1, '[{\"added\": {}}]', 15, 1),
(31, '2020-08-01 04:03:58.832441', '16', 'SubImagenes object (16)', 1, '[{\"added\": {}}]', 15, 1),
(32, '2020-08-01 04:04:07.690535', '17', 'SubImagenes object (17)', 1, '[{\"added\": {}}]', 15, 1),
(33, '2020-08-01 04:04:19.393788', '18', 'SubImagenes object (18)', 1, '[{\"added\": {}}]', 15, 1),
(34, '2020-08-01 04:04:38.934277', '19', 'SubImagenes object (19)', 1, '[{\"added\": {}}]', 15, 1),
(35, '2020-08-01 04:04:49.488080', '20', 'SubImagenes object (20)', 1, '[{\"added\": {}}]', 15, 1),
(36, '2020-08-01 04:05:39.055535', '21', 'SubImagenes object (21)', 1, '[{\"added\": {}}]', 15, 1),
(37, '2020-08-01 04:05:50.369000', '22', 'SubImagenes object (22)', 1, '[{\"added\": {}}]', 15, 1),
(38, '2020-08-01 04:05:58.472792', '23', 'SubImagenes object (23)', 1, '[{\"added\": {}}]', 15, 1),
(39, '2020-08-01 04:06:08.762894', '24', 'SubImagenes object (24)', 1, '[{\"added\": {}}]', 15, 1),
(40, '2020-08-01 04:06:19.150441', '25', 'SubImagenes object (25)', 1, '[{\"added\": {}}]', 15, 1),
(41, '2020-08-01 04:06:43.910334', '26', 'SubImagenes object (26)', 1, '[{\"added\": {}}]', 15, 1),
(42, '2020-08-01 04:06:51.715029', '27', 'SubImagenes object (27)', 1, '[{\"added\": {}}]', 15, 1),
(43, '2020-08-01 04:06:59.530201', '28', 'SubImagenes object (28)', 1, '[{\"added\": {}}]', 15, 1),
(44, '2020-08-01 04:07:07.534024', '29', 'SubImagenes object (29)', 1, '[{\"added\": {}}]', 15, 1),
(45, '2020-08-01 04:07:16.829378', '30', 'SubImagenes object (30)', 1, '[{\"added\": {}}]', 15, 1),
(46, '2020-08-01 04:07:38.422894', '31', 'SubImagenes object (31)', 1, '[{\"added\": {}}]', 15, 1),
(47, '2020-08-01 04:07:48.111679', '32', 'SubImagenes object (32)', 1, '[{\"added\": {}}]', 15, 1),
(48, '2020-08-01 04:07:58.440091', '33', 'SubImagenes object (33)', 1, '[{\"added\": {}}]', 15, 1),
(49, '2020-08-01 04:08:07.518631', '34', 'SubImagenes object (34)', 1, '[{\"added\": {}}]', 15, 1),
(50, '2020-08-01 04:08:15.023112', '35', 'SubImagenes object (35)', 1, '[{\"added\": {}}]', 15, 1),
(51, '2020-08-01 04:09:01.440992', '36', 'SubImagenes object (36)', 1, '[{\"added\": {}}]', 15, 1),
(52, '2020-08-01 04:09:11.291952', '37', 'SubImagenes object (37)', 1, '[{\"added\": {}}]', 15, 1),
(53, '2020-08-01 04:09:19.656865', '38', 'SubImagenes object (38)', 1, '[{\"added\": {}}]', 15, 1),
(54, '2020-08-01 04:09:29.063381', '39', 'SubImagenes object (39)', 1, '[{\"added\": {}}]', 15, 1),
(55, '2020-08-01 04:09:38.192059', '40', 'SubImagenes object (40)', 1, '[{\"added\": {}}]', 15, 1),
(56, '2020-08-01 04:09:58.137259', '41', 'SubImagenes object (41)', 1, '[{\"added\": {}}]', 15, 1),
(57, '2020-08-01 04:10:12.783456', '42', 'SubImagenes object (42)', 1, '[{\"added\": {}}]', 15, 1),
(58, '2020-08-01 04:10:23.317354', '43', 'SubImagenes object (43)', 1, '[{\"added\": {}}]', 15, 1),
(59, '2020-08-01 04:10:33.030668', '44', 'SubImagenes object (44)', 1, '[{\"added\": {}}]', 15, 1),
(60, '2020-08-01 04:10:43.147681', '45', 'SubImagenes object (45)', 1, '[{\"added\": {}}]', 15, 1),
(61, '2020-08-01 04:11:02.897846', '46', 'SubImagenes object (46)', 1, '[{\"added\": {}}]', 15, 1),
(62, '2020-08-01 04:11:11.507026', '47', 'SubImagenes object (47)', 1, '[{\"added\": {}}]', 15, 1),
(63, '2020-08-01 04:11:21.265049', '48', 'SubImagenes object (48)', 1, '[{\"added\": {}}]', 15, 1),
(64, '2020-08-01 04:11:30.158768', '49', 'SubImagenes object (49)', 1, '[{\"added\": {}}]', 15, 1),
(65, '2020-08-01 04:11:37.221964', '50', 'SubImagenes object (50)', 1, '[{\"added\": {}}]', 15, 1),
(66, '2020-08-01 04:12:32.055371', '51', 'SubImagenes object (51)', 1, '[{\"added\": {}}]', 15, 1),
(67, '2020-08-01 04:12:43.038201', '52', 'SubImagenes object (52)', 1, '[{\"added\": {}}]', 15, 1),
(68, '2020-08-01 04:12:51.806304', '53', 'SubImagenes object (53)', 1, '[{\"added\": {}}]', 15, 1),
(69, '2020-08-01 04:12:59.842203', '54', 'SubImagenes object (54)', 1, '[{\"added\": {}}]', 15, 1),
(70, '2020-08-01 04:13:10.894078', '55', 'SubImagenes object (55)', 1, '[{\"added\": {}}]', 15, 1),
(71, '2020-08-01 04:13:32.238653', '56', 'SubImagenes object (56)', 1, '[{\"added\": {}}]', 15, 1),
(72, '2020-08-01 04:13:41.064094', '57', 'SubImagenes object (57)', 1, '[{\"added\": {}}]', 15, 1),
(73, '2020-08-01 04:13:52.686025', '58', 'SubImagenes object (58)', 1, '[{\"added\": {}}]', 15, 1),
(74, '2020-08-01 04:14:02.503999', '59', 'SubImagenes object (59)', 1, '[{\"added\": {}}]', 15, 1),
(75, '2020-08-01 04:14:12.064198', '60', 'SubImagenes object (60)', 1, '[{\"added\": {}}]', 15, 1),
(76, '2020-08-01 04:14:33.236803', '61', 'SubImagenes object (61)', 1, '[{\"added\": {}}]', 15, 1),
(77, '2020-08-01 04:14:41.046482', '62', 'SubImagenes object (62)', 1, '[{\"added\": {}}]', 15, 1),
(78, '2020-08-01 04:14:50.262010', '63', 'SubImagenes object (63)', 1, '[{\"added\": {}}]', 15, 1),
(79, '2020-08-01 04:14:59.914216', '64', 'SubImagenes object (64)', 1, '[{\"added\": {}}]', 15, 1),
(80, '2020-08-01 04:15:09.096517', '65', 'SubImagenes object (65)', 1, '[{\"added\": {}}]', 15, 1),
(81, '2020-08-01 04:15:57.005256', '66', 'SubImagenes object (66)', 1, '[{\"added\": {}}]', 15, 1),
(82, '2020-08-01 04:16:04.903058', '67', 'SubImagenes object (67)', 1, '[{\"added\": {}}]', 15, 1),
(83, '2020-08-01 04:16:13.930721', '68', 'SubImagenes object (68)', 1, '[{\"added\": {}}]', 15, 1),
(84, '2020-08-01 04:16:23.620735', '69', 'SubImagenes object (69)', 1, '[{\"added\": {}}]', 15, 1),
(85, '2020-08-01 04:16:31.156233', '70', 'SubImagenes object (70)', 1, '[{\"added\": {}}]', 15, 1),
(86, '2020-08-01 04:16:47.801315', '71', 'SubImagenes object (71)', 1, '[{\"added\": {}}]', 15, 1),
(87, '2020-08-01 04:16:55.462075', '72', 'SubImagenes object (72)', 1, '[{\"added\": {}}]', 15, 1),
(88, '2020-08-01 04:17:03.377562', '73', 'SubImagenes object (73)', 1, '[{\"added\": {}}]', 15, 1),
(89, '2020-08-01 04:17:11.960691', '74', 'SubImagenes object (74)', 1, '[{\"added\": {}}]', 15, 1),
(90, '2020-08-01 04:17:18.734635', '75', 'SubImagenes object (75)', 1, '[{\"added\": {}}]', 15, 1),
(91, '2020-08-03 02:46:24.449499', '1', 'Reserva object (1)', 1, '[{\"added\": {}}]', 16, 1),
(92, '2020-08-03 02:46:36.319870', '1', 'Reserva object (1)', 3, '', 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'admins', 'anuncios'),
(8, 'admins', 'blog'),
(9, 'admins', 'contacto'),
(10, 'admins', 'cotizar'),
(11, 'admins', 'empresa'),
(12, 'admins', 'imagen'),
(16, 'admins', 'reserva'),
(15, 'admins', 'subimagenes'),
(13, 'admins', 'tipo'),
(14, 'admins', 'ubicacion'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'ipn', 'paypalipn'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-01 01:06:10.360010'),
(2, 'auth', '0001_initial', '2020-08-01 01:06:10.508228'),
(3, 'admin', '0001_initial', '2020-08-01 01:06:10.831501'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-01 01:06:10.908410'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-01 01:06:10.914420'),
(6, 'admins', '0001_initial', '2020-08-01 01:06:11.451245'),
(7, 'admins', '0002_auto_20200731_2006', '2020-08-01 01:06:11.587014'),
(8, 'contenttypes', '0002_remove_content_type_name', '2020-08-01 01:06:11.636266'),
(9, 'auth', '0002_alter_permission_name_max_length', '2020-08-01 01:06:11.676129'),
(10, 'auth', '0003_alter_user_email_max_length', '2020-08-01 01:06:11.690202'),
(11, 'auth', '0004_alter_user_username_opts', '2020-08-01 01:06:11.697376'),
(12, 'auth', '0005_alter_user_last_login_null', '2020-08-01 01:06:11.730511'),
(13, 'auth', '0006_require_contenttypes_0002', '2020-08-01 01:06:11.732533'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2020-08-01 01:06:11.739741'),
(15, 'auth', '0008_alter_user_username_max_length', '2020-08-01 01:06:11.752706'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2020-08-01 01:06:11.766538'),
(17, 'auth', '0010_alter_group_name_max_length', '2020-08-01 01:06:11.780136'),
(18, 'auth', '0011_update_proxy_permissions', '2020-08-01 01:06:11.791077'),
(19, 'sessions', '0001_initial', '2020-08-01 01:06:11.811403'),
(20, 'ipn', '0001_initial', '2020-08-04 00:59:16.770535'),
(21, 'ipn', '0002_paypalipn_mp_id', '2020-08-04 00:59:16.800197'),
(22, 'ipn', '0003_auto_20141117_1647', '2020-08-04 00:59:16.990009'),
(23, 'ipn', '0004_auto_20150612_1826', '2020-08-04 00:59:17.613904'),
(24, 'ipn', '0005_auto_20151217_0948', '2020-08-04 00:59:17.637820'),
(25, 'ipn', '0006_auto_20160108_1112', '2020-08-04 00:59:17.758987'),
(26, 'ipn', '0007_auto_20160219_1135', '2020-08-04 00:59:17.768347'),
(27, 'ipn', '0008_auto_20181128_1032', '2020-08-04 00:59:17.777387');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wl2gl6cdw63vwli5fe0j7d7g1m3il9fs', 'Y2E5NjI5YzVkYzZhMTU4ZjgxNDY2NGU3MGI4M2M3Njg2ODE0NGNmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjgwZjMyMjZiMjg1ZWZiMzkwNmUyNmUxMzQ1MjM5YzFmMzI3NDA5In0=', '2020-08-15 01:07:05.684726');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins_anuncios`
--
ALTER TABLE `admins_anuncios`
  ADD PRIMARY KEY (`id_anuncio`),
  ADD KEY `admins_anuncios_id_imagen_0ca50c06_fk_admins_imagen_id_imagen` (`id_imagen`),
  ADD KEY `admins_anuncios_id_tipo_97c710dd_fk_admins_tipo_id_tipo` (`id_tipo`),
  ADD KEY `admins_anuncios_id_ubicacion_6e968d5f_fk_admins_ub` (`id_ubicacion`);

--
-- Indices de la tabla `admins_blog`
--
ALTER TABLE `admins_blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `admins_contacto`
--
ALTER TABLE `admins_contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `admins_cotizar`
--
ALTER TABLE `admins_cotizar`
  ADD PRIMARY KEY (`id_cotizar`);

--
-- Indices de la tabla `admins_empresa`
--
ALTER TABLE `admins_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admins_imagen`
--
ALTER TABLE `admins_imagen`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `admins_reserva`
--
ALTER TABLE `admins_reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `admins_reserva_id_anuncio_c3573632_fk_admins_anuncios_id_anuncio` (`id_anuncio`);

--
-- Indices de la tabla `admins_subimagenes`
--
ALTER TABLE `admins_subimagenes`
  ADD PRIMARY KEY (`id_sub_imagen`),
  ADD KEY `admins_subimagenes_id_imagen_11738a08_fk_admins_imagen_id_imagen` (`id_imagen`);

--
-- Indices de la tabla `admins_tipo`
--
ALTER TABLE `admins_tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `admins_ubicacion`
--
ALTER TABLE `admins_ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

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
-- Indices de la tabla `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins_anuncios`
--
ALTER TABLE `admins_anuncios`
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `admins_blog`
--
ALTER TABLE `admins_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `admins_contacto`
--
ALTER TABLE `admins_contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `admins_cotizar`
--
ALTER TABLE `admins_cotizar`
  MODIFY `id_cotizar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `admins_empresa`
--
ALTER TABLE `admins_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `admins_imagen`
--
ALTER TABLE `admins_imagen`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `admins_reserva`
--
ALTER TABLE `admins_reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `admins_subimagenes`
--
ALTER TABLE `admins_subimagenes`
  MODIFY `id_sub_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `admins_tipo`
--
ALTER TABLE `admins_tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `admins_ubicacion`
--
ALTER TABLE `admins_ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admins_anuncios`
--
ALTER TABLE `admins_anuncios`
  ADD CONSTRAINT `admins_anuncios_id_imagen_0ca50c06_fk_admins_imagen_id_imagen` FOREIGN KEY (`id_imagen`) REFERENCES `admins_imagen` (`id_imagen`),
  ADD CONSTRAINT `admins_anuncios_id_tipo_97c710dd_fk_admins_tipo_id_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `admins_tipo` (`id_tipo`),
  ADD CONSTRAINT `admins_anuncios_id_ubicacion_6e968d5f_fk_admins_ub` FOREIGN KEY (`id_ubicacion`) REFERENCES `admins_ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `admins_reserva`
--
ALTER TABLE `admins_reserva`
  ADD CONSTRAINT `admins_reserva_id_anuncio_c3573632_fk_admins_anuncios_id_anuncio` FOREIGN KEY (`id_anuncio`) REFERENCES `admins_anuncios` (`id_anuncio`);

--
-- Filtros para la tabla `admins_subimagenes`
--
ALTER TABLE `admins_subimagenes`
  ADD CONSTRAINT `admins_subimagenes_id_imagen_11738a08_fk_admins_imagen_id_imagen` FOREIGN KEY (`id_imagen`) REFERENCES `admins_imagen` (`id_imagen`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
