-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-11-2024 a las 04:44:49
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbblog`
--
CREATE DATABASE IF NOT EXISTS `dbblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbblog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int NOT NULL,
  `titulo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL DEFAULT '',
  `extracto` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL DEFAULT '',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `texto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `thumb` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `extracto`, `fecha`, `texto`, `thumb`) VALUES
(1, 'La Historia del Teatro: Desde Grecia hasta Hoy', 'Descubre el fascinante recorrido del teatro desde sus inicios en la antigua Grecia hasta su influencia en la cultura moderna.', '2024-11-12 04:16:48', 'La historia del teatro es tan antigua como la humanidad misma. Nació en Grecia como una forma de honrar a los dioses y de explorar temas como la tragedia, la comedia y la moralidad. Desde entonces, el teatro ha evolucionado, atravesando épocas como el Renacimiento en Italia, el Siglo de Oro en España y la revolución del teatro moderno. Hoy, el teatro sigue siendo una herramienta poderosa de reflexión social y cultural. Analizaremos cómo el teatro ha influido en cada época y cómo sigue impactando el mundo.', 'teatro-griego-wide.jpg'),
(2, 'Introducción al Teatro de Improvisación', 'El teatro de improvisación es un arte dinámico donde los actores crean escenas espontáneamente. Conoce cómo funciona.', '2024-11-12 04:17:18', 'La improvisación es una de las formas más emocionantes de teatro, donde los actores no cuentan con un guion fijo y deben construir sus diálogos y escenas en el momento. Este tipo de teatro entrena a los actores a pensar rápidamente, escuchar a sus compañeros y aceptar ideas para hacer que cada escena fluya de manera natural. Además, es una herramienta eficaz para desarrollar habilidades de comunicación y trabajo en equipo. Aquí te explicamos sus fundamentos y cómo puedes empezar a practicarlo.', '4.png'),
(3, 'El Teatro Musical: Magia y Técnica en el Escenario', 'Un vistazo al teatro musical, donde la música, el baile y el drama se entrelazan para crear espectáculos inolvidables.', '2024-11-12 04:17:50', 'Desde Broadway hasta el teatro local, el teatro musical ha conquistado el corazón del público. Este tipo de teatro combina canto, danza y actuación para contar historias que conmueven, inspiran y entretienen. Montajes famosos como El Fantasma de la Ópera, Hamilton, y Los Miserables han redefinido el género. En este post, exploramos cómo se produce un musical y los elementos que lo convierten en una experiencia mágica para los espectadores.', 'images.jpg'),
(4, 'Las Grandes Tragedias de Shakespeare: Relevancia y Emoción', 'Shakespeare capturó la esencia de las emociones humanas en sus tragedias. ¿Qué hace a sus obras tan universales?', '2024-11-12 04:18:23', 'Las tragedias de William Shakespeare como Hamlet, Macbeth y Otelo no solo son obras maestras del teatro, sino estudios profundos de la naturaleza humana. Cada una de estas tragedias explora temas de ambición, traición, amor y locura, llevándonos a cuestionar nuestros propios valores y emociones. En este post, analizamos los elementos comunes en sus tragedias y su influencia en el teatro y la literatura moderna.', 'images.jpg'),
(5, 'La Escenografía en el Teatro: Arte que Cuenta una Historia', 'La escenografía es crucial para el teatro, ya que construye el entorno y el contexto de una obra.', '2024-11-12 04:18:55', 'La escenografía es mucho más que un fondo en el escenario; es un arte que da vida a la historia. Desde el mobiliario hasta los colores y la iluminación, cada detalle ayuda a transmitir el ambiente de la obra y a sumergir al público en el mundo de los personajes. En este post, veremos el trabajo de un escenógrafo y cómo, junto con el equipo técnico, crea un espacio único en cada producción teatral.', 'sorolla13-1024x480.webp'),
(6, 'El Rol del Público en el Teatro: Más que Espectadores', 'Los espectadores son una parte vital del teatro, ya que su energía influye en la actuación y el desarrollo de la obra.', '2024-11-12 04:19:23', 'En el teatro, el público no es simplemente un espectador pasivo; juega un papel activo que influye en la energía de los actores y el ritmo de la obra. La respuesta del público, ya sea con risas, aplausos o incluso silencio, impacta directamente en cómo los actores interpretan sus personajes. Aquí exploramos la relación entre el público y el escenario y cómo cada función es única gracias a esta conexión especial.', '2.png'),
(7, 'Cómo Leer una Obra de Teatro: Consejos para Disfrutar del Texto Teatral', 'Leer una obra de teatro requiere una forma distinta de acercarse al texto, pues está pensado para ser interpretado en el escenario.', '2024-11-12 04:26:19', 'A diferencia de una novela, una obra de teatro está diseñada para ser representada, lo que significa que el lector debe imaginarse la actuación, el escenario y el tono de los diálogos. Para muchos, leer teatro puede ser un desafío, pero con algunos consejos es posible disfrutar y entender mejor el texto. Te compartimos una guía para analizar el contexto, los personajes y la estructura de una obra teatral.\r\n\r\n', 'images.jpg'),
(8, 'Los Beneficios del Teatro en la Educación: Más que Solo Actuar', 'El teatro puede ser una herramienta educativa poderosa que fomenta habilidades de expresión y empatía en los jóvenes.', '2024-11-12 04:26:48', 'El teatro en la educación va más allá de aprender a actuar; fomenta la creatividad, la empatía y la capacidad de expresión de los estudiantes. A través de juegos de roles, improvisación y ejercicios de expresión corporal, los estudiantes desarrollan habilidades de comunicación y trabajo en equipo. En este post, exploraremos cómo las actividades teatrales pueden ser una herramienta para el desarrollo integral de los jóvenes.', 'sorolla13-1024x480.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
