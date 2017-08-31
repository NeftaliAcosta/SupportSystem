-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2017 a las 02:15:36
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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `comentarios` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `comentarios`) VALUES
(1, 'Tips', '0'),
(2, 'Noticias', '0'),
(3, 'Anuncios', '0'),
(4, 'Ayuda', '0'),
(5, 'Consejos', '0'),
(6, 'Tutoriales', '0');

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
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `extracto` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contenido` varchar(7000) COLLATE utf8_spanish_ci NOT NULL,
  `categorias` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contador` int(11) NOT NULL DEFAULT '0',
  `idautor` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `titulo`, `extracto`, `contenido`, `categorias`, `fecha`, `imagen`, `contador`, `idautor`) VALUES
(2, 'Artículo de ejemplo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi ni', '1,2,3,5', '2017-08-29', 'post1.png', 0, 1),
(5, 'Lo mejor de ser programador web experimentado', 'Durante el paso de los años el desarrollador web se ha visto en vuelto en mitos y leyendas urbanas acerca de su manera de parender, pero en este post revelaremos todas ellas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque iaculis lectus sit amet tellus semper posuere. Sed eleifend maximus pharetra. Mauris interdum diam purus, eget pulvinar dolor aliquam ut. In eleifend odio arcu, et vulputate est blandit et. Fusce malesuada in augue eget vulputate. Maecenas eget sodales odio. Nulla pulvinar purus eget lorem ornare feugiat. Nullam et ex sed sem imperdiet hendrerit eu et ipsum. Etiam feugiat semper magna, at lacinia ex sollicitudin eu. Nam gravida diam libero, eget porta mauris posuere non. Cras nisi dui, ornare nec enim vel, lacinia elementum urna. Mauris nec libero ut est rhoncus iaculis.', '4,5', '2017-08-29', 'post2.jpg', 0, 1),
(6, 'Consejos para llevar a cabo una correcta gestión dentro del sistema', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque iaculis lectus sit amet tellus semper posuere. Sed eleifend maximus pharetra. Mauris interdum diam purus, eget pulvinar dolor aliquam ut. In eleifend odio arcu, et vulputate est blandit et. Fusce malesuada in augue eget vulputate. Maecenas eget sodales odio. Nulla pulvinar purus eget lorem ornare feugiat. Nullam et ex sed sem imperdiet hendrerit eu et ipsum. Etiam feugiat semper magna, at lacinia ex sollicitudin eu. Nam gravida diam libero, eget porta mauris posuere non. Cras nisi dui, ornare nec enim vel, lacinia elementum urna. Mauris nec libero ut est rhoncus iaculis.', '2,4', '2017-09-29', 'post3.jpg', 0, 1),
(7, 'Beneficios de ser un programador freelancer: Ejemplo de emprendedor', 'Durante el paso de los años el desarrollador web se ha visto en vuelto en mitos y leyendas urbanas acerca de su manera de parender, pero en este post revelaremos todas ellas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi ni\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Mo', '3,5', '2017-04-30', 'post4.jpg', 0, 1),
(10, 'Ejemplos de programadores exitos gracias a las herramientas  experimentadas de d', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. ', '1,6', '2017-08-25', 'post5.jpg', 0, 1),
(12, 'Como se un programador activo: ejemplo de emprendedurismo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br><br>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', '1,4,6', '2017-08-30', 'post6.jpg', 0, 1);

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
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post_usuarios` (`idautor`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_post_usuarios` FOREIGN KEY (`idautor`) REFERENCES `usuarios` (`id`);

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
