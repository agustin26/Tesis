-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 01:23:43
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL,
  `estado_categoria` enum('0','1') NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `estado_categoria`, `id_usuario`) VALUES
(2, 'aceites', '1', 1),
(6, 'jabones', '1', 1),
(7, 'harinas', '1', 1),
(8, 'dulcesS', '1', 1),
(9, 'carnes', '1', 1),
(10, 'chocolates', '1', 1),
(11, 'quesos', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `dni_cliente` int(20) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `apellido_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(100) NOT NULL,
  `direccion_cliente` varchar(100) NOT NULL,
  `fecha_alta_cliente` date NOT NULL,
  `estado_cliente` enum('0','1') NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `dni_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono_cliente`, `direccion_cliente`, `fecha_alta_cliente`, `estado_cliente`, `id_usuario`) VALUES
(5, 159966666, 'Jorge', 'Rodriguez', '459966666', 'california', '2018-02-05', '1', 1),
(6, 45, 'karla', 'rodriguez', '789', 'chicago', '2018-02-13', '1', 1),
(8, 44011633, 'Belen', 'Sosa', '03764637375', 'Bompland 2463', '2023-04-03', '1', 1),
(9, 47729040, 'Eva Marina', 'Sosa', '3764160508', 'Amado bompland 2463', '2023-04-21', '1', 1),
(10, 23423424, 'martin', 'assdf', '35435', 'dsfsdf', '2023-04-21', '1', 1),
(11, 1366578, 'laura', 'gomez', '3764121314', 'asdasd', '2023-05-05', '1', 1),
(12, 28333444, 'juana', 'sosa', '3764121314', 'sdfgdf', '2023-05-17', '1', 1),
(17, 7766554, 'martita', 'sosa', '23424', 'wad', '2023-05-19', '1', 1),
(18, 74635, 'juan', 'sosa', '23424', 'asdsd', '2023-05-19', '1', 1),
(19, 948543950, 'lorena', 'Sosa', '03764637375', 'Bompland 2463', '2023-05-22', '1', 1),
(20, 77889374, 'german', 'Sosa', '03764637375', 'Bompland 2463', '2023-05-22', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compras` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `numero_compra` varchar(100) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `cuit_proveedor` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `total_compra` varchar(100) NOT NULL,
  `tipo_pago_compra` varchar(100) NOT NULL,
  `estado_compra` enum('0','1') NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compras`, `fecha_compra`, `numero_compra`, `nombre_proveedor`, `cuit_proveedor`, `usuario`, `total_compra`, `tipo_pago_compra`, `estado_compra`, `id_usuario`, `id_proveedor`) VALUES
(1, '2018-01-31', 'F000001', 'luis lopez', '14789', 'eyter', '120', 'CHEQUE', '0', 1, 3),
(2, '2018-02-06', 'F000002', 'luis lopez', '14789', 'eyter', '480', 'CHEQUE', '0', 1, 3),
(3, '2018-02-07', 'F000003', 'luis lopez', '14789', 'eyter', '480', 'EFECTIVO', '1', 1, 3),
(4, '2018-02-07', 'F000004', 'luis lopez', '14789', 'eyter', '192', 'EFECTIVO', '1', 1, 3),
(7, '2018-10-26', 'F000005', 'roberto perez', '45965', 'eyter', '336', 'CHEQUE', '0', 1, 4),
(8, '2023-04-21', 'F000006', 'juan perez', '234243324', 'eyter', '1000', 'EFECTIVO', '1', 1, 5),
(9, '2023-05-05', 'F000007', 'juan perez', '234243324', 'eyter', '100', 'EFECTIVO', '1', 1, 5),
(10, '2023-05-05', 'F000008', 'juan perez', '234243324', 'eyter', '100', 'EFECTIVO', '1', 1, 5),
(11, '2023-05-11', 'F000009', 'juan perez', '234243324', 'eyter', '100', 'EFECTIVO', '1', 1, 5),
(12, '2023-05-11', 'F000010', 'juan perez', '234243324', 'eyter', '1000', 'EFECTIVO', '0', 1, 5),
(13, '2023-05-11', 'F000011', 'juan perez', '234243324', 'eyter', '1000', 'EFECTIVO', '0', 1, 5),
(14, '2023-05-17', 'F000012', 'juan perez', '234243324', 'eyter', '100', 'EFECTIVO', '1', 1, 5),
(15, '2023-05-22', 'F000013', 'juan perez', '234243324', 'eyter', '6000', 'EFECTIVO', '1', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_corrientes`
--

CREATE TABLE `cuentas_corrientes` (
  `id_cuentas_corrientes` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `saldo_cc` varchar(100) NOT NULL,
  `estado_cc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas_corrientes`
--

INSERT INTO `cuentas_corrientes` (`id_cuentas_corrientes`, `id_cliente`, `saldo_cc`, `estado_cc`) VALUES
(1, 8, '0', '1'),
(2, 9, '0', '1'),
(3, 10, '200', '1'),
(4, 11, '0', '1'),
(5, 12, '0', '1'),
(6, 17, '0', '0'),
(7, 18, '0', '1'),
(8, 20, '0', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id_detalle_compras` int(11) NOT NULL,
  `numero_compra` varchar(100) NOT NULL,
  `cuit_proveedor` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio_compra_dc` varchar(100) NOT NULL,
  `cantidad_compra_dc` varchar(100) NOT NULL,
  `descuento_dc` varchar(100) NOT NULL,
  `importe_dc` varchar(100) NOT NULL,
  `fecha_compra_dc` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `estado_dc` enum('0','1') NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`id_detalle_compras`, `numero_compra`, `cuit_proveedor`, `id_producto`, `nombre_producto`, `precio_compra_dc`, `cantidad_compra_dc`, `descuento_dc`, `importe_dc`, `fecha_compra_dc`, `id_usuario`, `id_proveedor`, `estado_dc`, `id_categoria`) VALUES
(1, 'F000001', '14789', 4, 'jabon ACE', '100', '1', '0', '100', '2018-01-31', 1, 3, '0', 6),
(2, 'F000002', '14789', 9, 'jabon casa', '80', '5', '0', '400', '2018-02-06', 1, 3, '0', 6),
(3, 'F000003', '14789', 4, 'jabon ACE', '100', '4', '0', '400', '2018-02-07', 1, 3, '1', 6),
(4, 'F000004', '14789', 7, 'harina pan', '60', '1', '0', '60', '2018-02-07', 1, 3, '1', 7),
(5, 'F000004', '14789', 4, 'jabon ACE', '100', '1', '0', '100', '2018-02-07', 1, 3, '1', 6),
(9, 'F000005', '45965', 4, 'jabon ACE', '100', '2', '0', '200', '2018-10-26', 1, 4, '0', 6),
(10, 'F000005', '45965', 9, 'jabon casa', '80', '1', '0', '80', '2018-10-26', 1, 4, '0', 6),
(11, 'F000006', '234243324', 4, 'jabon ACE', '100', '10', '0', '1000', '2023-04-21', 1, 5, '1', 6),
(12, 'F000007', '234243324', 4, 'jabon ACE', '100', '1', '0', '100', '2023-05-05', 1, 5, '1', 6),
(13, 'F000008', '234243324', 4, 'jabon ACE', '100', '1', '0', '100', '2023-05-05', 1, 5, '1', 6),
(14, 'F000009', '234243324', 4, 'jabon ACE', '100', '1', '0', '100', '2023-05-11', 1, 5, '1', 6),
(15, 'F000010', '234243324', 4, 'jabon ACE', '100', '10', '0', '1000', '2023-05-11', 1, 5, '0', 6),
(16, 'F000011', '234243324', 4, 'jabon ACE', '100', '10', '0', '1000', '2023-05-11', 1, 5, '0', 6),
(17, 'F000012', '234243324', 24, 'alfajor', '100', '1', '0', '100', '2023-05-17', 1, 5, '1', 2),
(18, 'F000013', '234243324', 27, 'molida', '3000', '2000', '0', '6000', '2023-05-22', 1, 5, '1', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cuentas_corrientes`
--

CREATE TABLE `detalle_cuentas_corrientes` (
  `id_detalle_cc` int(11) NOT NULL,
  `id_cuenta_corriente` int(11) NOT NULL,
  `id_ventas` int(11) NOT NULL,
  `fecha_detalle_cc` datetime NOT NULL,
  `monto_detalle_cc` varchar(100) NOT NULL,
  `estado_detalle_cc` varchar(45) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_pago_detalle_cc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_cuentas_corrientes`
--

INSERT INTO `detalle_cuentas_corrientes` (`id_detalle_cc`, `id_cuenta_corriente`, `id_ventas`, `fecha_detalle_cc`, `monto_detalle_cc`, `estado_detalle_cc`, `id_cliente`, `id_usuario`, `fecha_pago_detalle_cc`) VALUES
(7, 1, 35, '2023-04-13 21:10:31', '200', 'pagado', 8, 1, '2023-05-22 15:24:18'),
(8, 1, 36, '2023-04-13 22:43:26', '281', 'pagado', 8, 1, '2023-05-22 20:25:35'),
(9, 3, 47, '2023-05-22 15:25:14', '200', 'adeuda', 10, 1, NULL),
(10, 3, 48, '2023-05-22 15:37:49', '81', 'pagado', 10, 1, '2023-05-23 19:02:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle_ventas` int(11) NOT NULL,
  `numero_venta` varchar(100) NOT NULL,
  `dni_cliente` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio_venta_producto` varchar(100) NOT NULL,
  `cantidad_detalle_v` varchar(100) NOT NULL,
  `descuento_detalle_v` varchar(100) NOT NULL,
  `importe_detalle_v` varchar(100) NOT NULL,
  `fecha_detalle_v` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `estado_detalle_v` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle_ventas`, `numero_venta`, `dni_cliente`, `id_producto`, `nombre_producto`, `precio_venta_producto`, `cantidad_detalle_v`, `descuento_detalle_v`, `importe_detalle_v`, `fecha_detalle_v`, `id_usuario`, `id_cliente`, `estado_detalle_v`) VALUES
(2, 'F000001', '159966666', 9, 'jabon casa', '200', '1', '0', '200', '2018-02-07', 1, 5, 1),
(3, 'F000002', '159966666', 4, 'jabon ACE', '200', '1', '0', '200', '2018-02-07', 1, 5, 1),
(4, 'F000002', '159966666', 9, 'jabon casa', '200', '1', '0', '200', '2018-02-07', 1, 5, 1),
(5, 'F000002', '159966666', 7, 'harina pan', '90', '1', '0', '90', '2018-02-07', 1, 5, 1),
(12, 'F000003', '159966666', 4, 'jabon ACE', '200', '2', '0', '400', '2018-10-26', 1, 5, 1),
(13, 'F000003', '159966666', 8, 'pan ', '81', '1', '0', '81', '2018-10-26', 1, 5, 1),
(41, 'F000029', '44011633', 9, 'jabon casa', '200', '1', '0', '200', '2023-04-13', 1, 8, 1),
(42, 'F000030', '44011633', 9, 'jabon casa', '200', '1', '0', '200', '2023-04-13', 1, 8, 1),
(43, 'F000030', '44011633', 8, 'pan ', '81', '1', '0', '81', '2023-04-13', 1, 8, 1),
(47, 'F000031', '23423424', 4, 'jabon ACE', '200', '1', '0', '200', '2023-04-21', 1, 10, 0),
(48, 'F000032', '159966666', 4, 'jabon ACE', '200', '1', '0', '200', '2023-05-05', 1, 5, 1),
(50, 'F000033', '47729040', 4, 'jabon ACE', '200', '2', '0', '400', '2023-05-11', 1, 9, 1),
(51, 'F000034', '44011633', 4, 'jabon ACE', '200', '1', '0', '200', '2023-05-11', 1, 8, 1),
(52, 'F000035', '23423424', 4, 'jabon ACE', '200', '1', '0', '200', '2023-05-11', 1, 10, 0),
(53, 'F000036', '159966666', 4, 'jabon ACE', '200', '1', '0', '200', '2023-05-12', 1, 5, 0),
(54, 'F000037', '159966666', 9, 'jabon casa', '200', '1', '0', '200', '2023-05-12', 1, 5, 0),
(55, 'F000038', '23423424', 9, 'jabon casa', '200', '1', '0', '200', '2023-05-22', 1, 10, 2),
(56, 'F000039', '23423424', 8, 'pan ', '81', '1', '0', '81', '2023-05-22', 1, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `nombre_permiso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `nombre_permiso`) VALUES
(1, 'Categoria'),
(2, 'Productos'),
(3, 'Proveedores'),
(4, 'Compras'),
(5, 'Clientes'),
(6, 'Ventas'),
(7, 'Reporte de Compras'),
(8, 'Reporte de Ventas'),
(9, 'Usuarios'),
(10, 'Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio_venta_producto` varchar(45) NOT NULL,
  `stock_producto` varchar(45) NOT NULL,
  `estado_producto` enum('0','1') NOT NULL,
  `imagen_producto` varchar(45) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_procedente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_categoria`, `nombre_producto`, `precio_venta_producto`, `stock_producto`, `estado_producto`, `imagen_producto`, `id_usuario`, `id_procedente`) VALUES
(4, 6, 'jabon ACE', '200', '13', '1', NULL, 1, NULL),
(6, 2, 'aceite carro', '300', '20', '1', NULL, 1, NULL),
(7, 7, 'harina pan', '90', '18', '1', NULL, 1, NULL),
(8, 7, 'pan ', '81', '19', '1', NULL, 1, NULL),
(9, 6, 'jabon casa', '200', '9', '1', NULL, 1, NULL),
(10, 9, 'manta', '200', '80', '1', NULL, 1, NULL),
(11, 9, 'pollito', '213', '0', '1', NULL, 1, NULL),
(12, 2, 'sadasd', '234', '0', '1', NULL, 1, NULL),
(22, 9, 'patito', '234', '10', '1', NULL, 1, '10'),
(23, 8, 'caramelos', '200', '0', '1', NULL, 1, '0'),
(24, 2, 'alfajor', '150', '1', '1', '62330986.jpg', 1, '0'),
(26, 9, 'Bifes', '2000', '0', '1', '', 1, '0'),
(27, 9, 'molida', '4000', '1000', '1', '', 1, '0'),
(28, 9, 'hamburguesas', '4000', '1000', '1', '', 1, '27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `cuit_proveedor` varchar(45) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `correo_proveedor` varchar(45) NOT NULL,
  `direccion_proveedor` varchar(150) NOT NULL,
  `fecha_alta_proveedor` date NOT NULL,
  `estado_proveedor` enum('0','1') NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `cuit_proveedor`, `nombre_proveedor`, `telefono_proveedor`, `correo_proveedor`, `direccion_proveedor`, `fecha_alta_proveedor`, `estado_proveedor`, `id_usuario`) VALUES
(3, '14789', 'luis lopez', '12399888', 'luis@gmail.com', 'california', '2018-01-29', '1', 1),
(4, '45965', 'roberto perez', '48859', 'roberto@gmail.com', 'texas', '2018-02-13', '1', 1),
(5, '234243324', 'juan perez', '376412131455', 'sosabelen597@gmail.com4', 'sdfsfd', '2023-04-21', '1', 1),
(6, '235243', 'evelin', '3764121314', 'evelin597@gmail.com', 'sfdsdf', '2023-05-05', '1', 1),
(7, '209183120', 'Martin ', '39487289347', 'martinsad597@gmail.com', 'Bompland 2463', '2023-05-22', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `apellido_usuario` varchar(100) NOT NULL,
  `dni_usuario` varchar(100) NOT NULL,
  `telefono_usuario` varchar(100) NOT NULL,
  `correo_usuario` varchar(100) NOT NULL,
  `direccion_usuario` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `password2_usuario` varchar(100) NOT NULL,
  `fecha_ingreso_usuario` date NOT NULL,
  `estado_usuario` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `dni_usuario`, `telefono_usuario`, `correo_usuario`, `direccion_usuario`, `usuario`, `password_usuario`, `password2_usuario`, `fecha_ingreso_usuario`, `estado_usuario`) VALUES
(1, 'admin', 'admin', '1', '123456', 'admin@gmail.com', '931283', 'Admin', 'Qw/*12345678', 'Qw/*12345678', '2017-12-26', '1'),
(2, 'alejandro', 'perez', '12', '12968566', 'alejandro@gmail.com', 'california', 'alejandro', 'Qw/*12345678', 'Qw/*12345678', '2018-02-13', '1'),
(3, 'juancito', 'slkdfj', '7789763', '03764637375', 'juan597@gmail.com', 'Bompland 2463', 'juann', 'Mn*12345', 'Mn*12345', '2023-05-22', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `id_usuario_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`id_usuario_permiso`, `id_usuario`, `id_permiso`) VALUES
(32, 2, 1),
(33, 2, 2),
(120, 3, 1),
(121, 3, 2),
(122, 1, 1),
(123, 1, 2),
(124, 1, 3),
(125, 1, 4),
(126, 1, 5),
(127, 1, 6),
(128, 1, 7),
(129, 1, 8),
(130, 1, 9),
(131, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `numero_venta` varchar(100) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `dni_cliente` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `total_venta` varchar(100) NOT NULL,
  `tipo_pago_venta` varchar(100) NOT NULL,
  `estado_venta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `fecha_venta`, `numero_venta`, `nombre_cliente`, `dni_cliente`, `usuario`, `total_venta`, `tipo_pago_venta`, `estado_venta`, `id_usuario`, `id_cliente`) VALUES
(2, '2018-02-07', 'F000001', 'Jorge', '159966666', 'eyter', '240', 'EFECTIVO', 1, 1, 5),
(3, '2018-02-07', 'F000002', 'Jorge', '159966666', 'eyter', '588', 'EFECTIVO', 1, 1, 5),
(7, '2018-10-26', 'F000003', 'Jorge', '159966666', 'eyter', '577', 'CHEQUE', 1, 1, 5),
(35, '2023-04-13', 'F000029', 'Belen', '44011633', 'eyter', '200', 'CUENTA CORRIENTE', 1, 1, 8),
(36, '2023-04-13', 'F000030', 'Belen', '44011633', 'eyter', '281', 'CUENTA CORRIENTE', 1, 1, 8),
(40, '2023-04-21', 'F000031', 'martin', '23423424', 'eyter', '200', 'CUENTA CORRIENTE', 0, 1, 10),
(41, '2023-05-05', 'F000032', 'Jorge', '159966666', 'eyter', '200', 'EFECTIVO', 1, 1, 5),
(42, '2023-05-11', 'F000033', 'Eva Marina', '47729040', 'eyter', '400', 'EFECTIVO', 1, 1, 9),
(43, '2023-05-11', 'F000034', 'Belen', '44011633', 'eyter', '200', 'EFECTIVO', 1, 1, 8),
(44, '2023-05-11', 'F000035', 'martin', '23423424', 'eyter', '200', 'EFECTIVO', 0, 1, 10),
(45, '2023-05-12', 'F000036', 'Jorge', '159966666', 'eyter', '200', 'EFECTIVO', 0, 1, 5),
(46, '2023-05-12', 'F000037', 'Jorge', '159966666', 'eyter', '200', 'EFECTIVO', 0, 1, 5),
(47, '2023-05-22', 'F000038', 'martin', '23423424', 'eyter', '200', 'CUENTA CORRIENTE', 2, 1, 10),
(48, '2023-05-22', 'F000039', 'martin', '23423424', 'eyter', '81', 'CUENTA CORRIENTE', 1, 1, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `fk_categoria_usuarios_idx` (`id_usuario`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_clientes_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compras`),
  ADD KEY `fk_compras_usuario_idx` (`id_usuario`),
  ADD KEY `fk_compras_proveedor_idx` (`id_proveedor`);

--
-- Indices de la tabla `cuentas_corrientes`
--
ALTER TABLE `cuentas_corrientes`
  ADD PRIMARY KEY (`id_cuentas_corrientes`),
  ADD KEY `id_cliente_ccfk_idx` (`id_cliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id_detalle_compras`),
  ADD KEY `fk_detalle_compras_producto_idx` (`id_producto`),
  ADD KEY `fk_detalle_compras_usuario_idx` (`id_usuario`),
  ADD KEY `fk_detalle_compras_proveedor_idx` (`id_proveedor`),
  ADD KEY `fk_detalle_compras_categoria_idx` (`id_categoria`);

--
-- Indices de la tabla `detalle_cuentas_corrientes`
--
ALTER TABLE `detalle_cuentas_corrientes`
  ADD PRIMARY KEY (`id_detalle_cc`),
  ADD KEY `id_ventas_dcfk_idx` (`id_ventas`),
  ADD KEY `id_usuario_dcfk_idx` (`id_usuario`),
  ADD KEY `id_cliente_dcfk_idx` (`id_cliente`),
  ADD KEY `id_cuentac_dcfk_idx` (`id_cuenta_corriente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle_ventas`),
  ADD KEY `fk_detalle_ventas_producto_idx` (`id_producto`),
  ADD KEY `fk_detalle_ventas_usuario_idx` (`id_usuario`),
  ADD KEY `fk_detalle_ventas_clientes_idx` (`id_cliente`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_categoria_idx` (`id_categoria`),
  ADD KEY `fk_producto_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `fk_proveedor_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`id_usuario_permiso`),
  ADD KEY `fk_usuario_permiso_usuario_idx` (`id_usuario`),
  ADD KEY `fk_usuario_permiso_permiso_idx` (`id_permiso`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `fk_ventas_usuario_idx` (`id_usuario`),
  ADD KEY `fk_ventas_cliente_idx` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cuentas_corrientes`
--
ALTER TABLE `cuentas_corrientes`
  MODIFY `id_cuentas_corrientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id_detalle_compras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `detalle_cuentas_corrientes`
--
ALTER TABLE `detalle_cuentas_corrientes`
  MODIFY `id_detalle_cc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `id_usuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `fk_categoria_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compras_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuentas_corrientes`
--
ALTER TABLE `cuentas_corrientes`
  ADD CONSTRAINT `id_cliente_ccfk` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `fk_detalle_compras_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_compras_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_compras_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_compras_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_cuentas_corrientes`
--
ALTER TABLE `detalle_cuentas_corrientes`
  ADD CONSTRAINT `id_cliente_dcfk` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_cuentac_dcfk` FOREIGN KEY (`id_cuenta_corriente`) REFERENCES `cuentas_corrientes` (`id_cuentas_corrientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_usuario_dcfk` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_ventas_dcfk` FOREIGN KEY (`id_ventas`) REFERENCES `ventas` (`id_ventas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `fk_detalle_ventas_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ventas_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ventas_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_usuario_permiso_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ventas_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
