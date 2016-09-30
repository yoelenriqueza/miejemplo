-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2016 a las 01:19:25
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleguitas_productos`
--

CREATE TABLE `galleguitas_productos` (
  `ID_Producto` int(11) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galleguitas_productos`
--

INSERT INTO `galleguitas_productos` (`ID_Producto`, `Producto`, `Categoria`) VALUES
(1, 'Pepitos', 'Galletitas Dulces'),
(2, 'Oreo', 'Galletitas Dulces'),
(3, 'Pepitos', 'Galletitas Dulces'),
(4, 'Oreo', 'Galletitas Dulces'),
(5, 'Criollitas', 'Galletitas Saladas'),
(6, 'Cerealitas', 'Galletitas Saladas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `galleguitas_productos`
--
ALTER TABLE `galleguitas_productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `galleguitas_productos`
--
ALTER TABLE `galleguitas_productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
