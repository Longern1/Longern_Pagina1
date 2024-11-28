-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2024 a las 02:26:32
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
  `cart_details` text DEFAULT NULL,
  `order_code` varchar(10) DEFAULT NULL,
  `order_status` enum('En preparación','En envío','Entregado') DEFAULT 'En preparación'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `full_name`, `cedula`, `city`, `address`, `payment_method`, `cart_details`, `order_code`, `order_status`) VALUES
(6, 'carlos maestre', '1234', 'Soledad', 'Cra 28a #43-03', 'debit-card', '[{\'title\': \'ugygyu\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\'}]', NULL, 'En preparación'),
(23, 'carlos', '12345', 'barranquilla', 'calle 28', 'paypal', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'LKQSPOWPHO', 'En preparación'),
(24, 'jose joaqui', '1234568', 'barranquilla', 'gygu', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'R3SCGWV72W', 'En preparación'),
(25, 'mas', '1234567', 'barranquilla', 'calle 28', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', '8X92RDHL0F', 'En preparación'),
(26, 'smdkjna', '213124', 'barranquilla', 'calle 89', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'WWVL76ERRN', 'En preparación'),
(27, 'dasdas', '123124', 'barranquilla', 'calle 89', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', '9ILH9TIC1O', 'En preparación'),
(28, 'jsoe', '21238', 'barranquilla', 'causdui', 'debit-card', '[]', 'S84DEAMTKG', 'En preparación'),
(29, 'carlos', '1242', 'barranquilla', 'csdfdad', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'GDK9TBF6WN', 'En preparación'),
(30, 'fdfa', '12324', 'barranquilla', 'calle 89', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}, {\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'JSMHM7PPKG', 'En preparación'),
(31, 'ads', '1234', 'barranquilla', 'dasd', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'P3XFL92U17', 'En preparación'),
(32, 'jj', '1234567', 'dfasd', '123d', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'R9A7YCO7RR', 'En preparación'),
(33, 'dasd', '1235', 'barranquilla', 'caiunsuidi', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'J1CRINEFOW', 'En preparación'),
(34, 'adsad', '12345', 'dasd', 'calle 89', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'SQLSZPUTM5', 'En preparación'),
(35, 'jj', '234', 'barranquilla', 'calle 89', 'credit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'CA5BNAYKQ8', 'En preparación'),
(36, 'ASDASD', '2131', 'DASDA', 'DASDS', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 2}, {\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', '3AMQQ19BSE', 'En preparación'),
(37, 'carlos', '123', 'barranquilla', 'calle 19', 'paypal', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'LAMP93EIQ2', 'En preparación'),
(38, 'dasd', '12345', 'barranquilla', 'dasd', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'HTU42KCQ3L', 'En preparación'),
(39, 'cfzczx', '1234', 'czxcasd', 'dasdas', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'G1P7NEID99', 'En preparación'),
(40, 'carlos', '312312', 'barranquilla', 'calle 89', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'A0KNTME21D', 'En envío'),
(41, 'fsdfsd', '312312', 'fdsfds', 'sadasd', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', '23ICLDWAOL', 'En envío'),
(42, 'fanijda', '21312', 'fsdf', 'dsf', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'M\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}, {\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 2}]', 'DX55Y33P1E', 'En preparación'),
(43, 'fsdfsd', '1231', 'fsd', 'sfsd', 'debit-card', '[{\'id\': \'Camiseta blanca\', \'title\': \'Camiseta blanca\', \'size\': \'S\', \'price\': \'$100.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/1.jpg\', \'quantity\': 1}]', 'FBT41LJFUH', 'En preparación'),
(44, 'fdfsdf', '12345', 'sxcczd', 'dasdasd', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}, {\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'S\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}, {\'id\': \'Oversize\', \'title\': \'Oversize\', \'size\': \'M\', \'price\': \'$200.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/3.jpg\', \'quantity\': 1}]', 'Y3D1NWIUMS', 'En preparación'),
(45, 'adsasd', '23123', 'fsdfsdfsd', 'fdsfsd', 'debit-card', '[{\'id\': \'Estampada\', \'title\': \'Estampada\', \'size\': \'M\', \'price\': \'$150.000\', \'image\': \'http://127.0.0.1:5000/static/Img/camisetas/2.jpg\', \'quantity\': 1}]', 'NM77YMQM9C', 'En preparación');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_code` (`order_code`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
