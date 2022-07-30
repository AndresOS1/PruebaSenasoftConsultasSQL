-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-07-2022 a las 00:00:03
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` bigint(20) UNSIGNED NOT NULL,
  `nombrecategoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombrecategoria`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Bebidas', 'Gaseosas, café, té, cervezas y maltas', NULL, NULL),
(2, 'Condimentos', 'Salsas dulces y picantes, delicias, comida para untar y aderezos', NULL, NULL),
(3, 'Repostería', 'Postres, dulces y pan dulce', NULL, NULL),
(4, 'Lácteos', 'Quesos', NULL, NULL),
(5, 'Granos/Cereales', 'Pan, galletas, pasta y cereales', NULL, NULL),
(6, 'Carnes', 'Carnes preparadas', NULL, NULL),
(7, 'Frutas/Verduras', 'Frutas secas y queso de soja', NULL, NULL),
(8, 'Pescado/Marisco', 'Pescados, mariscos y algas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_29_195538_create_categorias_table', 1),
(6, '2022_07_29_195558_create_proveedores_table', 1),
(7, '2022_07_30_195503_create_productos_table', 1);

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
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` bigint(20) UNSIGNED NOT NULL,
  `nombreProducto` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidadPorUnidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precioUnidad` double(10,1) NOT NULL,
  `unidadesEnExistencia` int(11) NOT NULL,
  `unidadesEnPedido` int(11) NOT NULL,
  `nivelNuevoPedido` int(11) NOT NULL,
  `suspendido` int(11) NOT NULL,
  `categoriaProducto` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idProveedor` bigint(20) UNSIGNED NOT NULL,
  `idCategoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombreProducto`, `cantidadPorUnidad`, `precioUnidad`, `unidadesEnExistencia`, `unidadesEnPedido`, `nivelNuevoPedido`, `suspendido`, `categoriaProducto`, `idProveedor`, `idCategoria`, `created_at`, `updated_at`) VALUES
(1, 'Té Dharamsala', '10 cajas x 20 bolsas', 18.0, 39, 0, 10, 0, 'Categoria D', 1, 1, NULL, NULL),
(2, 'Cerveza tibetana Barley', '24 # bot. 12 l', 19.0, 17, 40, 25, 0, 'Categoria D', 1, 1, NULL, NULL),
(3, 'Sirope de regaliz', '12 # bot. 550 ml', 10.0, 13, 70, 25, 0, 'Categoria D', 1, 2, NULL, NULL),
(4, 'Especias Cajun del chef Anton', '48 # frascos 6 l', 22.0, 53, 0, 0, 0, 'Categoria D', 2, 2, NULL, NULL),
(5, 'Mezcla Gumbo del chef Anton', '36 cajas', 21.4, 0, 0, 0, 1, 'Categoria D', 2, 2, NULL, NULL),
(6, 'Mermelada de grosellas de la abuela', '12 # frascos 8 l', 25.0, 120, 0, 25, 0, 'Categoria D', 3, 2, NULL, NULL),
(7, 'Peras secas orgánicas del tío Bob', '12 # paq. 1 kg', 30.0, 15, 0, 10, 0, 'Categoria D', 3, 7, NULL, NULL),
(8, 'Salsa de arándanos Northwoods', '12 # frascos 12 l', 40.0, 6, 0, 0, 0, 'Categoria D', 3, 2, NULL, NULL),
(9, 'Buey Mishi Kobe', '18 # paq. 500 g', 97.0, 29, 0, 0, 1, 'Categoria D', 4, 6, NULL, NULL),
(10, 'Pez espada', '12 # frascos 200 ml', 31.0, 31, 0, 0, 0, 'Categoria D', 4, 8, NULL, NULL),
(11, 'Queso Cabrales', 'paq. 1 kg', 21.0, 22, 30, 30, 0, 'Categoria D', 5, 4, NULL, NULL),
(12, 'Queso Manchego La Pastora', '10 # paq. 500 g', 38.0, 86, 0, 0, 0, 'Categoria D', 5, 4, NULL, NULL),
(13, 'Algas Konbu', 'caja 2 kg', 6.0, 24, 0, 5, 0, 'Categoria D', 6, 8, NULL, NULL),
(14, 'Cuajada de judías', '40 # paq. 100 g', 23.2, 35, 0, 0, 0, 'Categoria D', 6, 7, NULL, NULL),
(15, 'Salsa de soja baja en sodio', '24 # bot. 250 ml', 15.5, 39, 0, 5, 0, NULL, 6, 2, NULL, NULL),
(16, 'Postre de merengue Pavlova', '32 # cajas 500 g', 17.4, 29, 0, 10, 0, 'Categoria D', 7, 3, NULL, NULL),
(17, 'Cordero Alice Springs', '20 # latas 1 kg', 39.0, 0, 0, 0, 1, 'Categoria D', 7, 6, NULL, NULL),
(18, 'Langostinos tigre Carnarvon', 'paq. 16 kg', 62.5, 42, 0, 0, 0, 'Categoria D', 7, 8, NULL, NULL),
(19, 'Pastas de té de chocolate', '10 cajas x 12 piezas', 9.2, 25, 0, 5, 0, 'Categoria D', 8, 3, NULL, NULL),
(20, 'Mermelada de Sir Rodney\'s', '30 cajas regalo', 81.0, 40, 0, 0, 0, 'Categoria D', 8, 3, NULL, NULL),
(21, 'Bollos de Sir Rodney\'s', '24 paq. x 4 piezas', 10.0, 3, 40, 5, 0, 'Categoria D', 8, 3, NULL, NULL),
(22, 'Pan de centeno crujiente estilo Gustaf\'s', '24 # paq. 500 g', 21.0, 104, 0, 25, 0, 'Categoria D', 9, 5, NULL, NULL),
(23, 'Pan fino', '12 # paq. 250 g', 9.0, 61, 0, 25, 0, 'Categoria D', 9, 5, NULL, NULL),
(24, 'Refresco Guaraná Fantástica', '12 # latas 355 ml', 4.5, 20, 0, 0, 1, 'Categoria D', 10, 1, NULL, NULL),
(25, 'Crema de chocolate y nueces NuNuCa', '20 # vasos  450 g', 14.0, 76, 0, 30, 0, 'Categoria D', 11, 3, NULL, NULL),
(26, 'Ositos de goma Gumbär', '100 # bolsas 250 g', 31.2, 15, 0, 0, 0, 'Categoria D', 11, 3, NULL, NULL),
(27, 'Chocolate Schoggi', '100 # piezas 100 g', 43.9, 49, 0, 30, 0, 'Categoria D', 11, 3, NULL, NULL),
(28, 'Col fermentada Rössle', '25 # latas 825 g', 45.6, 26, 0, 0, 1, 'Categoria D', 12, 7, NULL, NULL),
(29, 'Salchicha Thüringer', '50 bolsas x 30 salch', 123.8, 0, 0, 0, 1, 'Categoria B', 12, 6, NULL, NULL),
(30, 'Arenque blanco del noroeste', '10 # vasos 200 g', 25.9, 10, 0, 15, 0, 'Categoria D', 13, 8, NULL, NULL),
(31, 'Queso gorgonzola Telino', '12 # paq. 100 g', 12.5, 0, 70, 20, 0, 'Categoria D', 14, 4, NULL, NULL),
(32, 'Queso Mascarpone Fabioli', '24 # paq. 200 g', 32.0, 9, 40, 25, 0, 'Categoria D', 14, 4, NULL, NULL),
(33, 'Queso de cabra', '500 g', 2.5, 112, 0, 20, 0, 'Categoria D', 15, 4, NULL, NULL),
(34, 'Cerveza Sasquatch', '24 # bot. 12 l', 14.0, 111, 0, 15, 0, 'Categoria D', 16, 1, NULL, NULL),
(35, 'Cerveza negra Steeleye', '24 # bot. 12 l', 18.0, 20, 0, 15, 0, 'Categoria D', 16, 1, NULL, NULL),
(36, 'Escabeche de arenque', '24 # frascos 250 g', 19.0, 112, 0, 20, 0, 'Categoria D', 17, 8, NULL, NULL),
(37, 'Salmón ahumado Gravad', '12 # paq. 500 g', 26.0, 11, 50, 25, 0, 'Categoria D', 17, 8, NULL, NULL),
(38, 'Vino Côte de Blaye', '12 # bot. 75 cl', 263.5, 17, 0, 15, 0, 'Categoria A', 18, 1, NULL, NULL),
(39, 'Licor verde Chartreuse', '750 cc por bot.', 18.0, 69, 0, 5, 0, 'Categoria D', 18, 1, NULL, NULL),
(40, 'Carne de cangrejo de Boston', '24 # latas 4 l', 18.4, 123, 0, 30, 0, 'Categoria D', 19, 8, NULL, NULL),
(41, 'Crema de almejas estilo Nueva Inglaterra', '12 # latas 12 l', 9.7, 85, 0, 10, 0, 'Categoria D', 19, 8, NULL, NULL),
(42, 'Tallarines de Singapur', '32 # 1 kg paq.', 14.0, 26, 0, 0, 1, 'Categoria D', 20, 5, NULL, NULL),
(43, 'Café de Malasia', '16 # latas 500 g', 46.0, 17, 10, 25, 0, 'Categoria D', 20, 1, NULL, NULL),
(44, 'Azúcar negra Malacca', '20 # bolsas 2 kg', 19.4, 27, 0, 15, 0, 'Categoria D', 20, 2, NULL, NULL),
(45, 'Arenque ahumado', 'paq. 1k', 9.5, 5, 70, 15, 0, 'Categoria D', 21, 8, NULL, NULL),
(46, 'Arenque salado', '4 # vasos 450 g', 12.0, 95, 0, 0, 0, 'Categoria D', 21, 8, NULL, NULL),
(47, 'Galletas Zaanse', '10 # cajas 4 l', 9.5, 36, 0, 0, 0, 'Categoria D', 22, 3, NULL, NULL),
(48, 'Chocolate holandés', '10 paq.', 12.8, 15, 70, 25, 0, 'Categoria D', 22, 3, NULL, NULL),
(49, 'Regaliz', '24 # paq. 50 g', 20.0, 10, 60, 15, 0, 'Categoria D', 23, 3, NULL, NULL),
(50, 'Chocolate blanco', '12 # barras 100 g', 16.2, 65, 0, 30, 0, 'Categoria D', 23, 3, NULL, NULL),
(51, 'Manzanas secas Manjimup', '50 # paq. 300 g', 53.0, 20, 0, 10, 0, 'Categoria C', 24, 7, NULL, NULL),
(52, 'Cereales para Filo', '16 # cajas 2 kg', 7.0, 38, 0, 25, 0, 'Categoria D', 24, 5, NULL, NULL),
(53, 'Empanada de carne', '48 porc.', 32.8, 0, 0, 0, 1, 'Categoria D', 24, 6, NULL, NULL),
(54, 'Empanada de cerdo', '16 tartas', 7.5, 21, 0, 10, 0, 'Categoria D', 25, 6, NULL, NULL),
(55, 'Paté chino', '24 cajas x 2 tartas', 24.0, 115, 0, 20, 0, 'Categoria D', 25, 6, NULL, NULL),
(56, 'Gnocchi de la abuela Alicia', '24 # paq. 250 g', 38.0, 21, 10, 30, 0, 'Categoria D', 26, 5, NULL, NULL),
(57, 'Raviolis Angelo', '24 # paq. 250 g', 19.5, 36, 0, 20, 0, 'Categoria D', 26, 5, NULL, NULL),
(58, 'Caracoles de Borgona', '24 porc.', 13.2, 62, 0, 20, 0, 'Categoria D', 27, 8, NULL, NULL),
(59, 'Raclet de queso Courdavault', 'paq. 5 kg', 55.0, 79, 0, 0, 0, 'Categoria C', 28, 4, NULL, NULL),
(60, 'Camembert Pierrot', '15 # paq. 300 g', 34.0, 19, 0, 0, 0, 'Categoria C', 28, 4, NULL, NULL),
(61, 'Sirope de arce', '24 # bot. 500 ml', 28.5, 113, 0, 25, 0, 'Categoria D', 29, 2, NULL, NULL),
(62, 'Tarta de azúcar', '48 tartas', 49.3, 17, 0, 0, 0, 'Categoria C', 29, 3, NULL, NULL),
(63, 'Sandwich de vegetales', '15 # frascos 625 g', 43.9, 24, 0, 5, 0, 'Categoria D', 7, 2, NULL, NULL),
(64, 'Bollos de pan de Wimmer', '20 bolsas x 4 porc.', 33.2, 22, 80, 30, 0, 'Categoria D', 12, 5, NULL, NULL),
(65, 'Salsa de pimiento picante de Luisiana', '32 # bot. 8 l', 21.1, 76, 0, 0, 0, 'Categoria D', 2, 2, NULL, NULL),
(66, 'Especias picantes de Luisiana', '24 # frascos 8 l', 17.0, 4, 100, 20, 0, 'Categoria D', 2, 2, NULL, NULL),
(67, 'Cerveza Laughing Lumberjack', '24 # bot. 12 l', 14.0, 52, 0, 10, 0, 'Categoria D', 16, 1, NULL, NULL),
(68, 'Barras de pan de Escocia', '10 cajas x 8 porc.', 12.5, 6, 10, 15, 0, 'Categoria D', 8, 3, NULL, NULL),
(69, 'Queso Gudbrandsdals', 'paq. 10 kg', 36.0, 26, 0, 15, 0, 'Categoria D', 15, 4, NULL, NULL),
(70, 'Cerveza Outback', '24 # bot. 355 ml', 15.0, 15, 10, 30, 0, 'Categoria D', 7, 1, NULL, NULL),
(71, 'Crema de queso Fløtemys', '10 # paq. 500 g', 21.5, 26, 0, 0, 0, 'Categoria D', 15, 4, NULL, NULL),
(72, 'Queso Mozzarella Giovanni', '24 # paq. 200 g', 34.8, 14, 0, 0, 0, 'Categoria D', 14, 4, NULL, NULL),
(73, 'Caviar rojo', '24 # frascos150 g', 15.0, 101, 0, 5, 0, 'Categoria D', 17, 8, NULL, NULL),
(74, 'Queso de soja Longlife', 'paq. 5 kg', 10.0, 4, 20, 5, 0, 'Categoria D', 4, 7, NULL, NULL),
(75, 'Cerveza Klosterbier Rhönbräu', '24 # bot. 0,5 l', 7.8, 125, 0, 25, 0, 'Categoria D', 12, 1, NULL, NULL),
(76, 'Licor Cloudberry', '500 ml', 18.0, 57, 0, 20, 0, 'Categoria D', 23, 1, NULL, NULL),
(77, 'Salsa verde original Frankfurter', '12 cajas', 13.0, 32, 0, 15, 0, 'Categoria D', 12, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` bigint(20) UNSIGNED NOT NULL,
  `nombreCompania` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombrecontacto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargocontacto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paginaprincipal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombreCompania`, `nombrecontacto`, `cargocontacto`, `direccion`, `ciudad`, `region`, `codpostal`, `pais`, `telefono`, `fax`, `paginaprincipal`, `created_at`, `updated_at`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Gerente de compras', '49 Gilbert St.', 'Londres', NULL, 'EC1 4SD', 'Reino Unido', '(171) 555#2222', NULL, NULL, NULL, NULL),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Administrador de pedidos', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'Estados Unidos', '(100) 555#4822', NULL, 'CAJUN.HTM#CAJUN.HTM#', NULL, NULL),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Representante de ventas', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'Estados Unidos', '(313) 555#5735', '(313) 555#3349', NULL, NULL, NULL),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Gerente de marketing', '9#8 SekimaiMusashino#shi', 'Tokyo', NULL, '100', 'Japón', '(03) 3555#5011', NULL, NULL, NULL, NULL),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra ', 'Administrador de exportaciones', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Espana', '(98) 598 76 54', NULL, NULL, NULL, NULL),
(6, 'Mayumi\'s', 'Mayumi Ohno', 'Representante de marketing', '92 SetsukoChuo#ku', 'Osaka', NULL, '545', 'Japón', '(06) 431#7877', NULL, 'Mayumi\'s (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#', NULL, NULL),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Gerente de marketing', '74 Rose St.Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444#2343', '(03) 444#6588', NULL, NULL, NULL),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Representante de ventas', '29 King\'s Way', 'Manchester', NULL, 'M14 GSD', 'Reino Unido', '(161) 555#4448', NULL, NULL, NULL, NULL),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Agente de ventas', 'Kaloadagatan 13', 'Göteborg', NULL, 'S#345 67', 'Suecia', '031#987 65 43', '031#987 65 91', NULL, NULL, NULL),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Gerente de marketing', 'Av. das Americanas 12.890', 'São Paulo', NULL, '5442', 'Brasil', '(11) 555 4640', NULL, NULL, NULL, NULL),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Gerente de ventas', 'Tiergartenstraße 5', 'Berlín', NULL, '10785', 'Alemania', '(010) 9984510', NULL, NULL, NULL, NULL),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Ger. marketing internacional', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Alemania', '(069) 992755', NULL, 'Plutzer (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#', NULL, NULL),
(13, 'Nord#Ost#Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinador de mercados', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Alemania', '(04721) 8713', '(04721) 8714', NULL, NULL, NULL),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Representante de ventas', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italia', '(0544) 60323', '(0544) 60603', 'FORMAGGI.HTM#FORMAGGI.HTM#', NULL, NULL),
(15, 'Norske Meierier', 'Beate Vileid', 'Gerente de marketing', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Noruega', '(0)2#953010', NULL, NULL, NULL, NULL),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Repr. de cuentas regional', '3400 # 8th AvenueSuite 210', 'Bend', 'OR', '97101', 'Estados Unidos', '(503) 555#9931', NULL, NULL, NULL, NULL),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Representante de ventas', 'Brovallavägen 231', 'Stockholm', NULL, 'S#123 45', 'Suecia', '08#123 45 67', NULL, NULL, NULL, NULL),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Gerente de ventas', '203, Rue des Francs#Bourgeois', 'París', NULL, '75004', 'Francia', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL, NULL, NULL),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Agente de cuentas al por mayor', 'Order Processing Dept.2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'Estados Unidos', '(617) 555#3267', '(617) 555#3389', NULL, NULL, NULL),
(20, 'Leka Trading', 'Chandra Leka', 'Propietario', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapur', '555#8787', NULL, NULL, NULL, NULL),
(21, 'Lyngbysild', 'Niels Petersen', 'Gerente de ventas', 'LyngbysildFiskebakken 10', 'Lyngby', NULL, '2800', 'Dinamarca', '43844108', '43844115', NULL, NULL, NULL),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Gerente de contabilidad', 'VerkoopRijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Holanda', '(12345) 1212', '(12345) 1210', NULL, NULL, NULL),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Gerente de producción', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finlandia', '(953) 10956', NULL, NULL, NULL, NULL),
(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Representante de ventas', '170 Prince Edward ParadeHunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555#5914', '(02) 555#4873', 'G\'day Mate (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#', NULL, NULL),
(25, 'Ma Maison', 'Jean#Guy Lauzon', 'Gerente de marketing', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555#9022', NULL, NULL, NULL, NULL),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Administrador de pedidos', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italia', '(089) 6547665', '(089) 6547667', NULL, NULL, NULL),
(27, 'Escargots Nouveaux', 'Marie Delamare', 'Gerente de ventas', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'Francia', '85.57.00.07', NULL, NULL, NULL, NULL),
(28, 'Gai pâturage', 'Eliane Noz', 'Representante de ventas', 'Bat. B3, rue des Alpes', 'Annecy', NULL, '74000', 'Francia', '38.76.98.06', '38.76.98.58', NULL, NULL, NULL),
(29, 'Forêts d\'érables', 'Chantal Goulet', 'Gerente de contabilidad', '148 rue Chasseur', 'Ste#Hyacinthe', 'Québec', 'J2S 7S8', 'Canadá', '(514) 555#2955', '(514) 555#2921', NULL, NULL, NULL);

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `productos_idproveedor_foreign` (`idProveedor`),
  ADD KEY `productos_idcategoria_foreign` (`idCategoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  ADD CONSTRAINT `productos_idproveedor_foreign` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
