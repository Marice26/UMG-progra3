-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2026 a las 18:28:10
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
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--
CREATE DATABASE IF NOT EXISTS umg;
USE umg;

CREATE TABLE IF NOT EXISTS `alumnos` (
  `Alu_Codigo` int(255) NOT NULL,
  `Alu_Nombre` varchar(250) NOT NULL,
  `Alu_Direccion` varchar(255) NOT NULL,
  `Alu_Estatus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion cursos alumnos`
--

CREATE TABLE IF NOT EXISTS `asignacion cursos alumnos` (
  `Car_Codigo` int(255) NOT NULL,
  `Cur_Codigo` int(250) NOT NULL,
  `Mae_Codigo` int(255) NOT NULL,
  `Alu_Codigo` int(255) NOT NULL,
  `ACA_Nota` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS`carreras` (
  `Car_Codigo` int(255) NOT NULL,
  `Car_Nombre` varchar(250) NOT NULL,
  `Car_Estatus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `Cur_Codigo` int(250) NOT NULL,
  `Cur_Nombre` varchar(250) NOT NULL,
  `Cur_Estatus` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE IF NOT EXISTS `maestros` (
  `Mae_Codigo` int(255) NOT NULL,
  `Mae_Nombre` varchar(250) NOT NULL,
  `Mae_Direccion` varchar(255) NOT NULL,
  `Mae_Estatus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE IF NOT EXISTS `alumnos`
  ADD PRIMARY KEY (`Alu_Codigo`);

--
-- Indices de la tabla `asignacion cursos alumnos`
--
ALTER TABLE IF NOT EXISTS `asignacion cursos alumnos`
  ADD KEY `Car_Codigo` (`Car_Codigo`),
  ADD KEY `Cur_Codigo` (`Cur_Codigo`),
  ADD KEY `Mae_Codigo` (`Mae_Codigo`),
  ADD KEY `Alu_Codigo` (`Alu_Codigo`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE IF NOT EXISTS `carreras`
  ADD PRIMARY KEY (`Car_Codigo`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE IF NOT EXISTS `cursos`
  ADD PRIMARY KEY (`Cur_Codigo`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE IF NOT EXISTS `maestros`
  ADD PRIMARY KEY (`Mae_Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE IF NOT EXISTS `alumnos`
  MODIFY `Alu_Codigo` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE IF NOT EXISTS `carreras`
  MODIFY `Car_Codigo` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE IF NOT EXISTS `maestros`
  MODIFY `Mae_Codigo` int(255) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion cursos alumnos`
--
ALTER TABLE IF NOT EXISTS `asignacion cursos alumnos`
  ADD CONSTRAINT `asignacion cursos alumnos_ibfk_1` FOREIGN KEY (`Mae_Codigo`) REFERENCES `maestros` (`Mae_Codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion cursos alumnos_ibfk_2` FOREIGN KEY (`Alu_Codigo`) REFERENCES `alumnos` (`Alu_Codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion cursos alumnos_ibfk_3` FOREIGN KEY (`Cur_Codigo`) REFERENCES `cursos` (`Cur_Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
  ADD CONSTRAINT `asignacion cursos alumnos_ibfk_4` FOREIGN KEY (`Jor_Codigo`) REFERENCES `cursos` (`Jor_Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE IF NOT EXISTS `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`Car_Codigo`) REFERENCES `asignacion cursos alumnos` (`Car_Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
