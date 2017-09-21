-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2017 a las 22:59:23
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
-- Estructura de tabla para la tabla `blog_categorias`
--

CREATE TABLE `blog_categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `comentarios` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `blog_categorias`
--

INSERT INTO `blog_categorias` (`id`, `categoria`, `comentarios`) VALUES
(1, 'Tips', '0'),
(2, 'Noticias', '0'),
(3, 'Anuncios', '0'),
(4, 'Ayuda', '0'),
(5, 'Consejos', '0'),
(6, 'Tutoriales', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post`
--

CREATE TABLE `blog_post` (
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
-- Volcado de datos para la tabla `blog_post`
--

INSERT INTO `blog_post` (`id`, `titulo`, `extracto`, `contenido`, `categorias`, `fecha`, `imagen`, `contador`, `idautor`) VALUES
(2, 'Artículo de ejemplo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi ni', '1,2,3,5', '2017-08-29', 'post1.png', 0, 1),
(5, 'Lo mejor de ser programador web experimentado', 'Durante el paso de los años el desarrollador web se ha visto en vuelto en mitos y leyendas urbanas acerca de su manera de parender, pero en este post revelaremos todas ellas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque iaculis lectus sit amet tellus semper posuere. Sed eleifend maximus pharetra. Mauris interdum diam purus, eget pulvinar dolor aliquam ut. In eleifend odio arcu, et vulputate est blandit et. Fusce malesuada in augue eget vulputate. Maecenas eget sodales odio. Nulla pulvinar purus eget lorem ornare feugiat. Nullam et ex sed sem imperdiet hendrerit eu et ipsum. Etiam feugiat semper magna, at lacinia ex sollicitudin eu. Nam gravida diam libero, eget porta mauris posuere non. Cras nisi dui, ornare nec enim vel, lacinia elementum urna. Mauris nec libero ut est rhoncus iaculis.', '4,5', '2017-08-29', 'post2.jpg', 0, 1),
(6, 'Consejos para llevar a cabo una correcta gestión dentro del sistema', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque iaculis lectus sit amet tellus semper posuere. Sed eleifend maximus pharetra. Mauris interdum diam purus, eget pulvinar dolor aliquam ut. In eleifend odio arcu, et vulputate est blandit et. Fusce malesuada in augue eget vulputate. Maecenas eget sodales odio. Nulla pulvinar purus eget lorem ornare feugiat. Nullam et ex sed sem imperdiet hendrerit eu et ipsum. Etiam feugiat semper magna, at lacinia ex sollicitudin eu. Nam gravida diam libero, eget porta mauris posuere non. Cras nisi dui, ornare nec enim vel, lacinia elementum urna. Mauris nec libero ut est rhoncus iaculis.', '2,4', '2017-09-29', 'post3.jpg', 0, 1),
(7, 'Beneficios de ser un programador freelancer: Ejemplo de emprendedor', 'Durante el paso de los años el desarrollador web se ha visto en vuelto en mitos y leyendas urbanas acerca de su manera de parender, pero en este post revelaremos todas ellas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi ni\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. \r\nVestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. <br>\r\nNunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Morbi nibh diam, luctus non elit non, tincidunt egestas enim. <br>Donec convallis cursus leo, sit amet congue elit viverra sit amet. Etiam interdum nisl quis erat lacinia vestibulum. Fusce in eros sem. Praesent consequat convallis elementum. Maecenas id placerat justo, id elementum augue. Cras venenatis mollis lectus eget venenatis. Vestibulum enim sem, <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. Vestibulum nunc enim, varius quis eleifend at, scelerisque ut justo. Duis aliquam metus eu ligula sodales, eget consectetur nisl feugiat. Nunc convallis turpis vel dui sodales lacinia. Sed consequat sit amet nunc eget finibus. Mo', '3,5', '2017-04-30', 'post4.jpg', 0, 1),
(10, 'Ejemplos de programadores exitos gracias a las herramientas  experimentadas de d', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a quam magna. Donec ut quam a diam facilisis ultrices. ', '1,6', '2017-08-25', 'post5.jpg', 0, 1),
(12, 'Como se un programador activo: ejemplo de emprendedurismo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará <br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará<br><br>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis continuará', '1,4,6', '2017-08-30', 'post6.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(1) DEFAULT '1',
  `conf_ac` int(1) DEFAULT NULL,
  `conf_tt` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `conf_kk` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `conf_dm` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `conf_dd` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Esta tabla almacena la configuración del sistema';

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `conf_ac`, `conf_tt`, `conf_kk`, `conf_dm`, `conf_dd`) VALUES
(1, 1, 'Hnuzr/hRWaETKi3C/c6PAbcVa/yQSytUWEEEdtJyiY4=', 'lfbrkASPNI56ZGDynhZc6i0zuNAIa7wKV7w6/+8WDfveRxLsM8nv2HKN6yIibACuhqMqaTgUKZ57YSQnXyeyl+/1r62BLN4RqHCfuBbStBVxgJmS4wJIH/pVaNcH/yuRx5VfjX/DeRSaQlK2A/nitA7tnU3S7Gbf8D/2KOqIAKo=', 'bD9OFFlCxH6M9/E78ZPKMIFv6rQwlJ4Q4fNUZ6Wkhr0=', 'vcddwJHfHTUjbnzs7eHp7Hty7ALQwbntGgmdqUb2oHo=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kb_articulos`
--

CREATE TABLE `kb_articulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contenido` varchar(10000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `privado` int(1) DEFAULT '0',
  `idautor` int(2) DEFAULT '0',
  `rankma` int(2) DEFAULT NULL,
  `rankme` int(2) DEFAULT NULL,
  `hash` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clase` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `kb_articulos`
--

INSERT INTO `kb_articulos` (`id`, `nombre`, `contenido`, `fecha`, `categoria`, `privado`, `idautor`, `rankma`, `rankme`, `hash`, `clase`) VALUES
(1, 'como aplicar las pruebas como candidato desde LPC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-12', 1, 0, 1, 0, 0, NULL, 'bs-callout-success'),
(2, 'como continuar pruebas pendientes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-09', 1, 0, 1, 0, 0, NULL, 'bs-callout-default'),
(3, '¿Qué hacer en caso de inconvenientes al aplicar la prueba? id 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-11', 13, 0, 1, 0, 0, NULL, 'bs-callout-primary'),
(4, 'Por que no puedo aplicar la prueba', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-11', 1, 0, 1, 0, 0, NULL, 'bs-callout-primary'),
(5, 'Hay problemas', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-09', 1, 0, 1, 0, 0, NULL, 'bs-callout-default'),
(6, 'Título de ejemplo para testear el menú', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>\r\n\r\n<img src=\"http://lorempixel.com/800/200/\"> \r\n<br><br>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum metus ipsum, fermentum nec nibh et, posuere lacinia orci. Nullam viverra, odio sit amet bibendum posuere, neque orci porta metus, ut feugiat urna mauris nec tellus. Aliquam eu fermentum ex. Etiam hendrerit commodo malesuada. Nam ante magna, volutpat sit amet tempor in, efficitur nec lorem. Nullam semper mauris id pretium varius. Praesent sodales ligula sit amet nisi pulvinar, vitae sodales lorem dignissim. Donec blandit pretium facilisis. Nulla fermentum mi sit amet metus eleifend, sit amet ullamcorper ipsum ullamcorper. Duis mattis eleifend leo in semper.</p>\r\n\r\n<p>Quisque non augue tincidunt, suscipit metus ac, pharetra nisi. Vestibulum fermentum vulputate bibendum. Sed eu faucibus lectus. Quisque vestibulum, nisl eget facilisis suscipit, libero mauris eleifend diam, vel tempor nulla tortor a ipsum. Fusce mauris ligula, congue vel turpis nec, imperdiet condimentum urna. Aliquam facilisis finibus arcu ut tristique. Donec congue ut ex vel dapibus. In neque purus, maximus vestibulum odio pulvinar, volutpat pretium eros. Aenean vestibulum, arcu eu dignissim mattis, felis ipsum dignissim augue, sit amet sagittis enim lectus mollis felis.</p>\r\n\r\n<p>Etiam pellentesque, arcu nec commodo elementum, neque tellus porttitor orci, vitae mollis lorem neque eu odio. Proin semper nibh vel imperdiet pharetra. Pellentesque nec bibendum urna, varius feugiat massa. Sed luctus augue vitae vulputate facilisis. Vestibulum nec est tincidunt, iaculis magna a, ultrices orci. Duis eu justo eget ante placerat finibus. In hac habitasse platea dictumst. Nam semper condimentum finibus.</p>\r\n\r\n<p>Aliquam tincidunt cursus venenatis. In sagittis iaculis lacus, quis pulvinar urna eleifend venenatis. In sed posuere ex, in malesuada sapien. Nunc ut augue luctus, maximus felis a, consequat lectus. Integer id lectus vel sapien placerat posuere. Donec a pharetra diam, vel ornare ipsum. Cras mollis dui at magna mattis pulvinar. Nulla tempor risus eu molestie accumsan. Praesent tristique molestie nisl eget consequat. Integer lobortis ligula velit, vel sagittis nibh accumsan nec. Nunc ornare sem quis nibh molestie lacinia. Maecenas ultricies et lectus non ornare.</p>\r\n\r\n<p>Nunc tincidunt aliquam lectus eu semper. Praesent euismod commodo odio, sit amet sagittis mauris pretium vel. Nunc eu neque orci. In dignissim vestibulum est, a pulvinar metus commodo sed. Sed placerat odio in est porta laoreet. Nullam sed eleifend lacus. Nullam quis tellus sed ex scelerisque vestibulum. In commodo congue augue, at facilisis est rutrum vitae.</p>', '2017-09-15', 3, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kb_categorias`
--

CREATE TABLE `kb_categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci DEFAULT '0',
  `padre` int(11) DEFAULT NULL,
  `icon` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `kb_categorias`
--

INSERT INTO `kb_categorias` (`id`, `nombre`, `padre`, `icon`) VALUES
(1, 'Servicio1', NULL, 'glyphicon-euro'),
(2, 'Servicio2', NULL, 'glyphicon-heart'),
(3, 'su-cat 1 ser 1', 1, 'glyphicon-ok'),
(4, 'tutoriales', 2, 'glyphicon-folder-open'),
(5, 'psicoweb', 3, 'glyphicon-folder-open'),
(6, 'Servicio3', NULL, 'glyphicon-off'),
(7, 'Servicio4', NULL, 'glyphicon-cog'),
(8, 'Servicio5', NULL, 'glyphicon-headphones'),
(9, 'Servicio6', NULL, 'glyphicon-folder-open'),
(10, 'Servicio7', NULL, 'glyphicon-phone'),
(11, 'su-cat 2  ser 1', 1, 'glyphicon-folder-open'),
(12, 'su-cat 3 ser 1', 1, 'glyphicon-folder-open'),
(13, 'test', 5, 'glyphicon-folder-open');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `Asunto` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `idPriori` int(11) NOT NULL DEFAULT '0',
  `idCanal` int(11) NOT NULL DEFAULT '0',
  `fechaTicket` date DEFAULT NULL,
  `idEstado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los datos del encabezado de cada ticket';

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`idTicket`, `idUsuario`, `Asunto`, `idPriori`, `idCanal`, `fechaTicket`, `idEstado`) VALUES
(7, 1, 'Test', 3, 2, '2017-08-14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_canales`
--

CREATE TABLE `ticket_canales` (
  `id` int(11) NOT NULL,
  `canal` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `idDepartamento` int(11) NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena el canal procedente del ticket. ';

--
-- Volcado de datos para la tabla `ticket_canales`
--

INSERT INTO `ticket_canales` (`id`, `canal`, `idDepartamento`, `estatus`) VALUES
(2, 'Sistema de Ticket', 1, 1),
(3, 'Sistema de Ticket', 2, 1),
(5, 'SMS', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_departamentos`
--

CREATE TABLE `ticket_departamentos` (
  `id` int(11) NOT NULL,
  `departamento` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='alacemana los departamentos de cada canal al que pertenece cada usuario';

--
-- Volcado de datos para la tabla `ticket_departamentos`
--

INSERT INTO `ticket_departamentos` (`id`, `departamento`, `estatus`) VALUES
(1, 'Soporte ténico', 1),
(2, 'Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_estados`
--

CREATE TABLE `ticket_estados` (
  `id` int(11) NOT NULL,
  `Estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ticket_estados`
--

INSERT INTO `ticket_estados` (`id`, `Estado`, `estatus`) VALUES
(1, 'Abierto', 1),
(2, 'En proceso', 1),
(3, 'Escalado', 1),
(4, 'Cerrado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_mensajes`
--

CREATE TABLE `ticket_mensajes` (
  `id` int(11) DEFAULT NULL,
  `idTicket` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `Mensaje` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `clase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los mensajes de cada ticket';

--
-- Volcado de datos para la tabla `ticket_mensajes`
--

INSERT INTO `ticket_mensajes` (`id`, `idTicket`, `idUsuario`, `Mensaje`, `fecha`, `clase`) VALUES
(NULL, 7, 1, 'estoy haciendo una prueba del ticket', '2017-08-14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_prioridades`
--

CREATE TABLE `ticket_prioridades` (
  `id` int(11) NOT NULL,
  `nomEstado` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los estados disponibles para los tickets';

--
-- Volcado de datos para la tabla `ticket_prioridades`
--

INSERT INTO `ticket_prioridades` (`id`, `nomEstado`, `estatus`) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1);

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
  `nivel` int(11) NOT NULL DEFAULT '1',
  `descripcion` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Almacena los usuarios del sistema';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `nombre`, `apellido`, `telefono`, `departamento`, `nivel`, `descripcion`) VALUES
(1, 'micorreo@correo.com', '123', 'Ikere Eliel', 'Marciano', '2291006049', '', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog_categorias`
--
ALTER TABLE `blog_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post_usuarios` (`idautor`);

--
-- Indices de la tabla `kb_articulos`
--
ALTER TABLE `kb_articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_kb_articulos_usuarios` (`idautor`),
  ADD KEY `FK_kb_aticulos_blog_categorias` (`categoria`);

--
-- Indices de la tabla `kb_categorias`
--
ALTER TABLE `kb_categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `padre` (`padre`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idTicket`),
  ADD KEY `idPriori` (`idPriori`),
  ADD KEY `FK_tickets_usuarios` (`idUsuario`),
  ADD KEY `FK_tickets_canales` (`idCanal`),
  ADD KEY `FK_tickets_estados` (`idEstado`);

--
-- Indices de la tabla `ticket_canales`
--
ALTER TABLE `ticket_canales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_canales_departamentos` (`idDepartamento`);

--
-- Indices de la tabla `ticket_departamentos`
--
ALTER TABLE `ticket_departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_estados`
--
ALTER TABLE `ticket_estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_mensajes`
--
ALTER TABLE `ticket_mensajes`
  ADD KEY `FK_msjtickets_tickets` (`idTicket`),
  ADD KEY `FK_msjtickets_usuarios` (`idUsuario`);

--
-- Indices de la tabla `ticket_prioridades`
--
ALTER TABLE `ticket_prioridades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog_categorias`
--
ALTER TABLE `blog_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `kb_articulos`
--
ALTER TABLE `kb_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `kb_categorias`
--
ALTER TABLE `kb_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ticket_canales`
--
ALTER TABLE `ticket_canales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ticket_departamentos`
--
ALTER TABLE `ticket_departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ticket_estados`
--
ALTER TABLE `ticket_estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ticket_prioridades`
--
ALTER TABLE `ticket_prioridades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `FK_post_usuarios` FOREIGN KEY (`idautor`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `kb_articulos`
--
ALTER TABLE `kb_articulos`
  ADD CONSTRAINT `FK_kb_articulos_usuarios` FOREIGN KEY (`idautor`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FK_kb_aticulos_blog_categorias` FOREIGN KEY (`categoria`) REFERENCES `kb_categorias` (`id`);

--
-- Filtros para la tabla `kb_categorias`
--
ALTER TABLE `kb_categorias`
  ADD CONSTRAINT `FK_kb_categorias_kb_categorias` FOREIGN KEY (`padre`) REFERENCES `kb_categorias` (`id`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_tickets_canales` FOREIGN KEY (`idCanal`) REFERENCES `ticket_canales` (`id`),
  ADD CONSTRAINT `FK_tickets_estados` FOREIGN KEY (`idEstado`) REFERENCES `ticket_estados` (`id`),
  ADD CONSTRAINT `FK_tickets_prioridadticket` FOREIGN KEY (`idPriori`) REFERENCES `ticket_prioridades` (`id`),
  ADD CONSTRAINT `FK_tickets_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ticket_canales`
--
ALTER TABLE `ticket_canales`
  ADD CONSTRAINT `FK_canales_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `ticket_departamentos` (`id`);

--
-- Filtros para la tabla `ticket_mensajes`
--
ALTER TABLE `ticket_mensajes`
  ADD CONSTRAINT `FK_msjtickets_tickets` FOREIGN KEY (`idTicket`) REFERENCES `ticket` (`idTicket`),
  ADD CONSTRAINT `FK_msjtickets_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
