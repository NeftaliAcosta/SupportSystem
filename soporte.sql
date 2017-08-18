-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2017 a las 00:40:25
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canales`
--

CREATE TABLE `canales` (
  `id` int(11) NOT NULL,
  `canal` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `idDepartamento` int(11) NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena el canal procedente del ticket. ';

--
-- Volcado de datos para la tabla `canales`
--

INSERT INTO `canales` (`id`, `canal`, `idDepartamento`, `estatus`) VALUES
(2, 'Sistema de Ticket', 1, 1),
(3, 'Sistema de Ticket', 2, 1),
(5, 'SMS', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(1) DEFAULT '1',
  `nSistema` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dSistema` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `key` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Esta tabla almacena la configuración del sistema';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `departamento` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='alacemana los departamentos de cada canal al que pertenece cada usuario';

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`, `estatus`) VALUES
(1, 'Soporte ténico', 1),
(2, 'Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `Estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `Estado`, `estatus`) VALUES
(1, 'Abierto', 1),
(2, 'En proceso', 1),
(3, 'Escalado', 1),
(4, 'Cerrado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msjtickets`
--

CREATE TABLE `msjtickets` (
  `id` int(11) DEFAULT NULL,
  `idTicket` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `Mensaje` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `clase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los mensajes de cada ticket';

--
-- Volcado de datos para la tabla `msjtickets`
--

INSERT INTO `msjtickets` (`id`, `idTicket`, `idUsuario`, `Mensaje`, `fecha`, `clase`) VALUES
(NULL, 7, 1, 'estoy haciendo una prueba del ticket', '2017-08-14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridadticket`
--

CREATE TABLE `prioridadticket` (
  `id` int(11) NOT NULL,
  `nomEstado` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los estados disponibles para los tickets';

--
-- Volcado de datos para la tabla `prioridadticket`
--

INSERT INTO `prioridadticket` (`id`, `nomEstado`, `estatus`) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `idTicket` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `Asunto` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `idPriori` int(11) NOT NULL DEFAULT '0',
  `idCanal` int(11) NOT NULL DEFAULT '0',
  `fechaTicket` datetime DEFAULT NULL,
  `idEstado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los datos del encabezado de cada ticket';

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`idTicket`, `idUsuario`, `Asunto`, `idPriori`, `idCanal`, `fechaTicket`, `idEstado`) VALUES
(7, 1, 'Test', 3, 2, '2017-08-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `password` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `apellido` varchar(40) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `departamento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los usuarios del sistema';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `nombre`, `apellido`, `telefono`, `departamento`, `nivel`) VALUES
(1, 'micorreo@correo.com', '123', 'Ikere Eliel', 'Marciano', '2291006049', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canales`
--
ALTER TABLE `canales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_canales_departamentos` (`idDepartamento`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `msjtickets`
--
ALTER TABLE `msjtickets`
  ADD KEY `FK_msjtickets_tickets` (`idTicket`),
  ADD KEY `FK_msjtickets_usuarios` (`idUsuario`);

--
-- Indices de la tabla `prioridadticket`
--
ALTER TABLE `prioridadticket`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`idTicket`),
  ADD KEY `idPriori` (`idPriori`),
  ADD KEY `FK_tickets_usuarios` (`idUsuario`),
  ADD KEY `FK_tickets_canales` (`idCanal`),
  ADD KEY `FK_tickets_estados` (`idEstado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canales`
--
ALTER TABLE `canales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `prioridadticket`
--
ALTER TABLE `prioridadticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canales`
--
ALTER TABLE `canales`
  ADD CONSTRAINT `FK_canales_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `msjtickets`
--
ALTER TABLE `msjtickets`
  ADD CONSTRAINT `FK_msjtickets_tickets` FOREIGN KEY (`idTicket`) REFERENCES `tickets` (`idTicket`),
  ADD CONSTRAINT `FK_msjtickets_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `FK_tickets_canales` FOREIGN KEY (`idCanal`) REFERENCES `canales` (`id`),
  ADD CONSTRAINT `FK_tickets_estados` FOREIGN KEY (`idEstado`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `FK_tickets_prioridadticket` FOREIGN KEY (`idPriori`) REFERENCES `prioridadticket` (`id`),
  ADD CONSTRAINT `FK_tickets_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
