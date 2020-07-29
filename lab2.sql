-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2020 a las 20:06:13
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lab2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Carnet` int(10) UNSIGNED NOT NULL COMMENT 'Campo que identifica como unico a un estudiante',
  `Nombres` varchar(50) NOT NULL COMMENT 'Nombres del estudiante',
  `Apellidos` varchar(50) NOT NULL COMMENT 'Apellidos del estudiante',
  `Sexo` varchar(1) NOT NULL COMMENT 'Sexo del estudiante (F= Femenino/M=Masculino)',
  `FechaNacimiento` datetime NOT NULL COMMENT 'Fecha de nacimiento del estudiante'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene informacion de los estudiantes';

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Carnet`, `Nombres`, `Apellidos`, `Sexo`, `FechaNacimiento`) VALUES
(1, 'N1', 'A2', 'M', '1990-04-01 00:00:00'),
(2, 'N2', 'A2', 'M', '1990-04-01 00:00:00'),
(3, 'N3', 'A3', 'M', '1990-04-01 00:00:00'),
(4, 'N4', 'A4', 'M', '1990-04-01 00:00:00'),
(5, 'N5', 'A5', 'M', '1990-04-01 00:00:00'),
(6, 'N6', 'A6', 'F', '1990-04-01 00:00:00'),
(7, 'N7', 'A7', 'F', '1990-04-01 00:00:00'),
(8, 'N8', 'A8', 'F', '1990-04-01 00:00:00'),
(9, 'N9', 'A9', 'F', '1990-04-01 00:00:00'),
(10, 'N10', 'A10', 'F', '1990-04-01 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Carnet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
