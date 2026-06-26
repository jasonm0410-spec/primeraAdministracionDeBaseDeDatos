-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 03:50:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zapateria_cárdenas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(1, 'Juan', 'Pérez', '70112233', 'San Miguel'),
(2, 'María', 'López', '71223344', 'Usulután'),
(3, 'Carlos', 'Gómez', '72334455', 'La Unión'),
(4, 'Ana', 'Martínez', '73445566', 'San Salvador'),
(5, 'José', 'Ramírez', '74556677', 'Santa Ana'),
(6, 'Sofía', 'Hernández', '75667788', 'Sonsonate'),
(7, 'Luis', 'Castro', '76778899', 'Ahuachapán'),
(8, 'Daniela', 'Flores', '77889900', 'San Miguel'),
(9, 'Miguel', 'Vásquez', '78990011', 'Usulután'),
(10, 'Carmen', 'Rivera', '79001122', 'La Unión'),
(11, 'Kevin', 'Ortiz', '70123456', 'San Salvador'),
(12, 'Valeria', 'Morales', '71234567', 'Santa Ana'),
(13, 'Fernando', 'Reyes', '72345678', 'Sonsonate'),
(14, 'Gabriela', 'Cruz', '73456789', 'Ahuachapán'),
(15, 'Ricardo', 'Méndez', '74567890', 'San Miguel'),
(16, 'Paola', 'Rojas', '75678901', 'Usulután'),
(17, 'Andrés', 'Navarro', '76789012', 'La Unión'),
(18, 'Lucía', 'Aguilar', '77890123', 'San Salvador'),
(19, 'Jorge', 'Torres', '78901234', 'Santa Ana'),
(20, 'Natalia', 'Ruiz', '79012345', 'Sonsonate'),
(21, 'Óscar', 'Chávez', '70134567', 'Ahuachapán'),
(22, 'Patricia', 'Escobar', '71245678', 'San Miguel'),
(23, 'Diego', 'Pineda', '72356789', 'Usulután'),
(24, 'Alejandra', 'Luna', '73467890', 'La Unión'),
(25, 'Roberto', 'Silva', '74578901', 'San Salvador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `cantidad`, `subtotal`, `id_venta`, `id_producto`) VALUES
(1, 1, 95.00, 1, 1),
(2, 1, 110.00, 2, 2),
(3, 1, 85.00, 3, 3),
(4, 1, 90.00, 4, 4),
(5, 1, 75.00, 5, 5),
(6, 1, 65.00, 6, 6),
(7, 1, 70.00, 7, 7),
(8, 1, 80.00, 8, 8),
(9, 1, 88.00, 9, 9),
(10, 1, 72.00, 10, 10),
(11, 1, 60.00, 11, 11),
(12, 1, 68.00, 12, 12),
(13, 1, 92.00, 13, 13),
(14, 1, 120.00, 14, 14),
(15, 1, 98.00, 15, 15),
(16, 1, 105.00, 16, 16),
(17, 1, 89.00, 17, 17),
(18, 1, 78.00, 18, 18),
(19, 1, 115.00, 19, 19),
(20, 1, 62.00, 20, 20),
(21, 1, 74.00, 21, 21),
(22, 1, 69.00, 22, 22),
(23, 1, 95.00, 23, 23),
(24, 1, 130.00, 24, 24),
(25, 1, 125.00, 25, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `cargo`) VALUES
(1, 'Carlos', 'Ramírez', 'Gerente'),
(2, 'María', 'López', 'Vendedor'),
(3, 'José', 'Martínez', 'Vendedor'),
(4, 'Ana', 'Hernández', 'Cajera'),
(5, 'Luis', 'Flores', 'Bodeguero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre_zapato` varchar(50) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `talla` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre_zapato`, `marca`, `talla`, `precio`, `stock`) VALUES
(1, 'Air Max 90', 'Nike', 38, 95.00, 12),
(2, 'Air Force 1', 'Nike', 40, 110.00, 10),
(3, 'Superstar', 'Adidas', 39, 85.00, 15),
(4, 'Stan Smith', 'Adidas', 41, 90.00, 8),
(5, 'Classic Leather', 'Reebok', 42, 75.00, 6),
(6, 'Chuck Taylor', 'Converse', 40, 65.00, 20),
(7, 'Old Skool', 'Vans', 39, 70.00, 14),
(8, 'Sk8-Hi', 'Vans', 42, 80.00, 9),
(9, 'RS-X', 'Puma', 41, 88.00, 11),
(10, 'Suede Classic', 'Puma', 40, 72.00, 13),
(11, 'Go Walk', 'Skechers', 38, 60.00, 18),
(12, 'D Lites', 'Skechers', 39, 68.00, 10),
(13, 'Gel Contend', 'Asics', 42, 92.00, 7),
(14, 'Gel Nimbus', 'Asics', 43, 120.00, 5),
(15, '574', 'New Balance', 40, 98.00, 12),
(16, '997H', 'New Balance', 41, 105.00, 8),
(17, 'Court Vision', 'Nike', 39, 89.00, 10),
(18, 'Run Falcon', 'Adidas', 42, 78.00, 15),
(19, 'Nano X', 'Reebok', 41, 115.00, 6),
(20, 'Era', 'Vans', 38, 62.00, 17),
(21, 'One Star', 'Converse', 40, 74.00, 9),
(22, 'Carina', 'Puma', 37, 69.00, 13),
(23, 'Arch Fit', 'Skechers', 42, 95.00, 8),
(24, 'Kayano', 'Asics', 43, 130.00, 4),
(25, 'Fresh Foam', 'New Balance', 41, 125.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `fecha`, `total`, `id_cliente`, `id_empleado`) VALUES
(1, '2026-06-01', 95.00, 1, 2),
(2, '2026-06-01', 110.00, 2, 2),
(3, '2026-06-02', 85.00, 3, 3),
(4, '2026-06-02', 90.00, 4, 3),
(5, '2026-06-03', 75.00, 5, 4),
(6, '2026-06-03', 65.00, 6, 4),
(7, '2026-06-04', 70.00, 7, 2),
(8, '2026-06-04', 80.00, 8, 2),
(9, '2026-06-05', 88.00, 9, 3),
(10, '2026-06-05', 72.00, 10, 3),
(11, '2026-06-06', 60.00, 11, 4),
(12, '2026-06-06', 68.00, 12, 4),
(13, '2026-06-07', 92.00, 13, 2),
(14, '2026-06-07', 120.00, 14, 2),
(15, '2026-06-08', 98.00, 15, 3),
(16, '2026-06-08', 105.00, 16, 3),
(17, '2026-06-09', 89.00, 17, 4),
(18, '2026-06-09', 78.00, 18, 4),
(19, '2026-06-10', 115.00, 19, 2),
(20, '2026-06-10', 62.00, 20, 2),
(21, '2026-06-11', 74.00, 21, 3),
(22, '2026-06-11', 69.00, 22, 3),
(23, '2026-06-12', 95.00, 23, 4),
(24, '2026-06-12', 130.00, 24, 4),
(25, '2026-06-13', 125.00, 25, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `fk_venta` (`id_venta`),
  ADD KEY `fk_producto` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `fk_cliente` (`id_cliente`),
  ADD KEY `fk_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`),
  ADD CONSTRAINT `fk_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_ventas`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
