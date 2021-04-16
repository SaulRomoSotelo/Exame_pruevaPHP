-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 16-04-2021 a las 18:22:07
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examdevelop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job`
--

CREATE TABLE `job` (
  `id_job` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `job`
--

INSERT INTO `job` (`id_job`, `name`) VALUES
(1, 'programador'),
(2, 'contador'),
(3, 'mercadologo'),
(4, 'mercadologo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_c`
--

CREATE TABLE `users_c` (
  `id_user` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `Last_name` varchar(15) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_c`
--

INSERT INTO `users_c` (`id_user`, `name`, `Last_name`, `job_id`) VALUES
(1, 'saul', 'Romo', 1),
(2, 'jorge', 'Torres', 2),
(4, 'jesus', 'perez', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id_job`);

--
-- Indices de la tabla `users_c`
--
ALTER TABLE `users_c`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_user` (`job_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `job`
--
ALTER TABLE `job`
  MODIFY `id_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users_c`
--
ALTER TABLE `users_c`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users_c`
--
ALTER TABLE `users_c`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`job_id`) REFERENCES `job` (`id_job`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
