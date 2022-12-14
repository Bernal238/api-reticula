-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 12-10-2022 a las 04:11:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `materias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--
CREATE DATABASE 'materias'
USE 'materias'


CREATE TABLE `materia` (
  `id_materia` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `horas_teoria` int(2) DEFAULT NULL,
  `horas_practica` int(2) DEFAULT NULL,
  `id_semestre` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `horas_teoria`, `horas_practica`, `id_semestre`) VALUES
('ACA', 'ACTIVIDADES COMPLEMENTARIAS', 0, 0, 6),
('ACA0907', 'TALLER DE ETICA', 0, 4, 1),
('ACA0909', 'TALLER DE INVESTIGACIÓN I', 0, 4, 7),
('ACA0910', 'TALLER DE INVESTIGACIÓN II', 0, 4, 8),
('ACC0906', 'FUNDAMENTOS DE INVESTIGACION', 2, 2, 1),
('ACD0908', 'DESARROLLO SUSTENTABLE', 2, 3, 3),
('ACF0901', 'CALCULO DIFERENCIAL', 3, 2, 1),
('ACF0902', 'CALCULO INTEGRAL', 3, 2, 2),
('ACF0903', 'ÁLGEBRA LINEAL', 3, 2, 2),
('ACF0904', 'CALCULO VECTORIAL', 3, 2, 3),
('ACF0905', 'ECUACIONES DIFERENCIALES', 3, 2, 4),
('AEB1055', 'PROGRAMAIÓN WEB', 1, 4, 9),
('AEC1008', 'CONTABILIDAD FINANCIERA', 2, 2, 2),
('AEC1034', 'FUNDAMENTOS DE TELECOMUNICACIONES', 2, 2, 5),
('AEC1058', 'QUIMICA', 2, 2, 2),
('AEC1061', 'SISTEMAS OPERATIVOS', 2, 2, 5),
('AED1026', 'ESTRUCTURA DE DATOS', 2, 3, 3),
('AED1285', 'FUNDAMENTOS DE PROGRAMACION', 2, 3, 1),
('AED1286', 'PROGRAMACION ORIENTADA A OBJETOS', 2, 3, 2),
('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 3, 2, 4),
('AEF1041', 'MATEMATICAS DISCREATAS', 3, 2, 1),
('AEF1052', 'PROBABILIDAD Y ESTADISTICA', 3, 2, 2),
('DAC2104', 'CÓMPUTO Y SERVICIOS EN LA NUBE', 2, 2, 8),
('DAD2106', 'LABORATORIO PARA EL DESPLIEGUE DE APLICACIONES EMPRESARIALES', 2, 3, 9),
('DAH2101', 'BASE DE DATOS AVANZADAS', 1, 3, 7),
('DAH2102', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MOVILES', 1, 3, 8),
('DAH2103', 'CIENCIA DE DATOS', 1, 3, 8),
('DAH2105', 'DESARROLLO DE APLICACIONES EMPRESARIALES', 1, 3, 9),
('R1', 'RESIDENCIA', 0, 10, 9),
('S1', 'SERVICIO SOCIAL', 0, 10, 8),
('SCA1002', 'ADMINISTRACIÓN DE REDES', 0, 4, 8),
('SCA1025', 'TALLER DE BASE DE DATOS', 0, 4, 5),
('SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 0, 4, 6),
('SCB1001', 'ADMINISTRACION DE BASE DE DATOS', 1, 4, 6),
('SCC1005', 'CULTURA EMPRESARIAL', 2, 2, 3),
('SCC1007', 'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE', 2, 2, 5),
('SCC1010', 'GRAFICACIÓN', 2, 2, 5),
('SCC1012', 'INTELIGENCIA ARTIFICIAL', 2, 2, 9),
('SCC1013', 'INVESTIGACION DE OPERACIONES', 2, 2, 3),
('SCC1014', 'LENGUAJES DE INTERFAZ', 2, 2, 6),
('SCC1017', 'MÉTODOS NUMÉRICOS', 2, 2, 4),
('SCC1019', 'PROGRAMACIÓN LÓGICA Y FUNCIONAL', 2, 2, 8),
('SCC1023', 'SISTEMAS PROGRAMABLES', 2, 2, 7),
('SCD1003', 'ARQUITECTURA DE COMPUTADORAS', 2, 3, 5),
('SCD1004', 'CONMUTACION Y ENRUTAMIENTO DE REDES DE DATOS', 2, 3, 7),
('SCD1011', 'INGENIERÍA DE SOFTWARE', 2, 3, 6),
('SCD1015', 'LENGUAJES Y AUTOMATAS I', 2, 3, 6),
('SCD1016', 'LENGUAJES Y AUTOMATAS II', 2, 3, 7),
('SCD1018', 'PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES', 2, 3, 4),
('SCD1021', 'REDES DE COMPUTADORAS', 2, 3, 6),
('SCD1022', 'SIMULACIÓN', 2, 3, 4),
('SCD1027', 'TÓPICOS AVANZADOS DE PROGRAMACIÓN', 2, 3, 4),
('SCF1006', 'FISICA GENERAL', 3, 2, 3),
('SCG1009', 'GESTION DE PROYECTOS DE SOFTWARE', 3, 3, 7),
('SCH1024', 'TALLER DE ADMINISTRACION', 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id_semestre` int(11) NOT NULL,
  `nombre_semestre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `nombre_semestre`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO'),
(6, 'SEXTO'),
(7, 'SEPTIMO'),
(8, 'OCTAVO'),
(9, 'NOVENO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `fk_materia_semestre` (`id_semestre`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id_semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
