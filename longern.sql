-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2024 a las 19:09:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `longern`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `cart_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `full_name`, `cedula`, `city`, `address`, `payment_method`, `cart_details`) VALUES
(6, 'carlos maestre', '1234', 'Soledad', 'Cra 28a #43-03', 'debit-card', '[{\'title\': \'ugygyu\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\'}]'),
(7, 'carlos', '1234', 'barranquilla', 'caiunsuidi', 'debit-card', '[{\'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\'}, {\'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\'}]'),
(8, 'jose joaquin', '234', 'barranquilla', 'calle 25', 'debit-card', '[{\'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\'}]'),
(9, 'natalia', '324', 'barranquilla', 'calle 38', 'credit-card', '[{\'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\'}]'),
(10, 'alfredo', '5443', 'barranquilla', 'calle 89', 'paypal', '[{\'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\'}]'),
(11, 'polo', '896', 'barranquilla', 'calle 76', 'cash-on-delivery', '[{\'title\': \'Oversize\', \'size\': \'S\', \'price\': \'$200.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/3.jpg\'}]'),
(12, 'pla', '34', 'barranquilla', 'calle 7', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 2}]'),
(13, 'lon', '632', 'barranquilla', 'calle 27', 'credit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]'),
(14, 'carlos', '1234', 'barranquilla', 'calle 89', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 3}]'),
(15, 'jj', '1234', 'barranquilla', 'caiunsuidi', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]'),
(16, 'carlos', '1234', 'barranquilla', 'caiunsuidi', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 2}]'),
(17, 'carlos', '1234', 'barranquilla', 'carrera 2', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 2}]'),
(18, 'carlos', '234', 'barranquilla', 'calle 89', 'cash-on-delivery', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 5}]'),
(19, 'pedro', '732', 'barranquilla', 'carrera 7', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]'),
(20, 'ksoa', '132', 'barranquilla', 'calle 45', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}, {\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
