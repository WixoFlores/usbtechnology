-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2021 a las 08:41:10
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Base de datos: `usbshopi`
--

-- --------------------------------------------------------

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'MOUSSE'),
(2, 'MEMORIAS USB'),
(3, 'BOCINAS'),
(4, 'CARGADORES'),
(5, 'AUDIFONOS');

-- --------------------------------------------------------

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'USB 2GB', 'MEMORIA USB DE 2 GB	', '100.00', '90.00', 10, '2GB.png', 2),
(2, 'USB 4GB', 'MEMORIA USB DE 4 GB	', '140.00', '120.00', 10, '4GB.png', 2),
(3, 'USB 8GB', 'MEMORIA USB DE 8 GB	', '200.00', '180.00', 10, '8GB.png', 2),
(4, 'LAPIZ USB 8GB', 'MEMORIA LAPIZ USB DE 8 GB	', '220.00', '200.00', 10, '8GBLAPIZ.png', 2),
(5, 'USB 32GB', 'MEMORIA USB DE 32 GB	', '320.00', '300.00', 10, '32GB.png', 2),
(6, 'USB 16GB', 'MEMORIA USB DE 16 GB	', '260.00', '230.00', 10, '16GB.png', 2),
(7, 'USB 64GB', 'MEMORIA USB DE 64 GB	', '380.00', '350.00', 10, '64GB.png', 2),
(8, 'AUDIFONOS AIRPODS', 'AUDIFONOS AIRPODS INALAMBRICOS BLUETHOO	', '300.00', '250.00', 10, 'AU-AIPODS.png', 5),
(9, 'AUDIFONOS INALAMBRICOS', 'AUDIFONOS DEPORTIVOS INALAMBRICOS ', '350.00', '300.00', 10, 'AU-DEPORTIVO.png', 5),
(10, 'AUDIFONOS DIADEMA', 'AUDIFONOS DIADEMA INALAMBRICOS ', '400.00', '380.00', 10, 'AU-DIADEMA.png', 5),
(11, 'AUDIFONOS ALAMBRICOS', 'AUDIFONOS ALAMBRICOS ', '120.00', '100.00', 10, 'AU-CABLE.png', 5),
(12, 'CARGADOR INALAMBRICO', 'CARGADOR INALAMBRICO DOBLE ', '380.00', '350.00', 10, 'BANK-DOBLE.png', 4),
(13, 'CARGADOR SOLAR', 'CARGADOR INALAMBRICO SOLAR ', '400.00', '390.00', 10, 'BANK-SOLAR.png', 4),
(14, 'CARGADOR INALAMBRICO', 'CARGADOR INALAMBRICO ECONOMICO ', '250.00', '200.00', 10, 'BANK-SIMPLE.png', 4),
(15, 'CARGADOR KIT', 'CARGADOR KIT (PARED,CARRO) ', '200.00', '150.00', 10, 'CAR-CARRO.png', 4),
(16, 'CARGADOR MULTIENTRADAS', 'CARGADOR MULTIENTRADAS	', '180.00', '150.00', 10, 'CAR-MULTIENTRADAS.png', 4),
(17, 'BOCINA CONTRA AGUA', 'BOCINA BLUETHOO CONTRA AGUA	', '180.00', '150.00', 10, 'BO-CONTRAAGUA.png', 3),
(18, 'BOCINA CON CORREA', 'BOCINA BLUETHOO CON CORREA	', '250.00', '220.00', 10, 'BO-CORREA.png', 3),
(19, 'BOCINA RETRO', 'BOCINA BLUETHOO ESTILO RETRO	', '300.00', '280.00', 10, 'BO-RETRO.png', 3),
(20, 'BOCINA CON LUZ', 'BOCINA BLUETHOO CON LUZ	', '320.00', '300.00', 10, 'BO-COLORES.png', 3),
(21, 'MOUSSE ALAMBRICO', 'MOUSSE ALAMBRICO', '120.00', '100.00', 10, 'MO-ALAMBRICO.png', 1),
(22, 'MOUSSE INALAMBRICO', 'MOUSSE INALAMBRICO', '260.00', '220.00', 10, 'MO-INALAMBRICO.png', 1);


-- --------------------------------------------------------

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Luis Flores', '21232f297a57a5a743894a0e4a801fc3');


ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
