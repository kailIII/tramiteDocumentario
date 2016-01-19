-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2016 a las 05:35:03
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tramite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asunto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `office_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_office_id_foreign` (`office_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `document`
--

INSERT INTO `document` (`id`, `asunto`, `office_id`, `created_at`, `updated_at`) VALUES
(1, 'Bienvenida', 4, '0000-00-00 00:00:00', '2016-01-07 08:41:31'),
(5, 'Hola', 3, '2016-01-07 06:22:46', '2016-01-07 06:53:27'),
(6, 'Asunto No Solucionado', 4, '2016-01-07 06:26:36', '2016-01-07 08:41:35'),
(7, 'Asunto asdasd', 1, '2016-01-07 06:27:20', '2016-01-07 06:27:20'),
(9, 'Solucion', 3, '2016-01-07 08:20:44', '2016-01-07 08:20:44'),
(10, 'Tramite DNI: Miriam Flores Copa', 7, '2016-01-07 08:23:59', '2016-01-07 08:23:59'),
(13, 'asdasdasda', 3, '2016-01-07 08:38:16', '2016-01-07 08:41:40'),
(14, 'Hola como estas', 7, '2016-01-07 08:46:20', '2016-01-07 08:46:20'),
(15, 'asdasd', 7, '2016-01-07 08:47:58', '2016-01-07 08:47:58'),
(16, 'Asdasda', 7, '2016-01-07 08:48:51', '2016-01-07 08:48:51'),
(17, 'Asdasdasd', 7, '2016-01-07 08:49:36', '2016-01-07 08:49:36'),
(18, 'asdasdsa', 7, '2016-01-07 08:53:04', '2016-01-07 08:53:04'),
(19, 'Asdasdsa', 7, '2016-01-07 08:53:47', '2016-01-07 08:53:47'),
(20, 'asdasdas', 7, '2016-01-07 08:54:25', '2016-01-07 08:54:25'),
(21, 'Asdasda', 7, '2016-01-07 08:55:14', '2016-01-07 08:55:14'),
(22, 'Asdasdas', 7, '2016-01-07 09:04:00', '2016-01-07 09:04:00'),
(23, 'Asdasda', 7, '2016-01-07 09:04:13', '2016-01-07 09:04:13'),
(24, 'asdasdsa', 7, '2016-01-07 09:04:38', '2016-01-07 09:04:38'),
(25, 'Tramite DNI: Miriam', 7, '2016-01-07 09:05:11', '2016-01-07 09:05:11'),
(26, 'Tramite DNI: Benjamin', 1, '2016-01-07 09:09:46', '2016-01-07 09:09:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_02_202027_create_sessions_table', 1),
('2016_01_03_234014_create_offices_table', 1),
('2016_01_03_240000_create_users_table', 1),
('2016_01_04_000055_create_document_table', 1),
('2016_01_04_002436_create_seguimiento_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `office`
--

CREATE TABLE IF NOT EXISTS `office` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_office` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `office`
--

INSERT INTO `office` (`id`, `name_office`, `created_at`, `updated_at`) VALUES
(1, 'Puno', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Arequipa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Cuzco', '2016-01-05 06:37:15', '2016-01-05 06:37:15'),
(4, 'Lima', '2016-01-05 13:02:07', '2016-01-05 13:02:07'),
(6, 'Loreto', '2016-01-06 02:04:09', '2016-01-06 07:14:13'),
(7, 'Lampa', '2016-01-06 02:14:06', '2016-01-06 07:12:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE IF NOT EXISTS `seguimiento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` enum('ENVIADO','RECIBIDO','ELIMINADO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'RECIBIDO',
  `document_id` int(10) unsigned NOT NULL,
  `office_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seguimiento_document_id_foreign` (`document_id`),
  KEY `seguimiento_office_id_foreign` (`office_id`),
  KEY `seguimiento_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`id`, `estado`, `document_id`, `office_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'RECIBIDO', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ENVIADO', 1, 4, 5, '2016-01-07 00:40:48', '2016-01-07 00:40:49'),
(5, 'ELIMINADO', 1, 7, 2, '2016-01-07 00:41:10', '2016-01-07 00:41:11'),
(7, 'RECIBIDO', 24, 7, 8, '2016-01-07 09:04:38', '2016-01-07 09:04:38'),
(8, 'RECIBIDO', 25, 7, 8, '2016-01-07 09:05:12', '2016-01-07 09:05:12'),
(9, 'RECIBIDO', 26, 1, 1, '2016-01-07 09:09:46', '2016-01-07 09:09:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `office_id` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_office_id_foreign` (`office_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `office_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Benjamin', 'christianbfc97@gmail.com', '$2y$10$I2.YZDHZT3vD/x3lbHni1O1XKfK9TJSRIwpGSSKqrjglyIpvVMasK', 1, '7wV1se8eajVFF3LOT6hM2nABTKBelBUshIozaDAf96D1y4fAHUQQ46PyoV1D', '2016-01-04 06:14:14', '2016-01-07 08:22:04'),
(2, 'James', 'james@gmail.com', '$2y$10$ZrNb19r.vWMm/nq082.TEOcWRkgeCnAcyn2NKlIPCbkXeaIPPUwgK', NULL, NULL, '2016-01-05 10:41:11', '2016-01-05 10:41:11'),
(5, 'Valkiria', 'valkiria.caz@gmail.com', '$2y$10$Piw.0VaeRtozvhPwij3kY.sKF0tG2IWoovyxteSZDNVWGTKECfZue', 2, 'visKSI0hbqiS3ZI610b1xilu5w4sJPOfgmGNhyHpSm4iFXhajXZ3PCjeGTxv', '2016-01-05 11:34:35', '2016-01-05 11:35:09'),
(6, 'Jorgito', 'JorgitoxD@gmail.com', '$2y$10$CSTfY/u14mpqbcrapT./6.c1D.r9cqFL6OWhjbDGg73zBUVIHNhwu', 3, 'P4TK8XioebliIsKIT7MXvp1CpC5uiuFw3cB6zocPhAdXyrtTwZycRCFagOuM', '2016-01-06 02:03:28', '2016-01-06 02:35:56'),
(7, 'Jherson', 'Jherson@gmail.com', '$2y$10$EZCApf5l3c/YQvNF0uGZSOJ7WGwXizjfyNa52RqjtfXNMrJpiwzMu', 4, 'wYHYAw7TZ1j0YCcCAdMELtb3qDp5NAEnt0pNTbH2n8vq5a3aGmMR9vxMiwDS', '2016-01-07 00:31:37', '2016-01-07 00:45:16'),
(8, 'Jose Alberto Quiñones', 'jose@gmail.com', '$2y$10$ectBP1N0xXLdJpKgh22ATumGck0Ddeska/j30b9VYB2S72GtWF8Pu', 7, '0Jdrtu2GEqePBWk9JBZOOuPJ1vHiYJUf3VBLurSVCMzg6G31KyQmAWh58hpE', '2016-01-07 08:22:53', '2016-01-07 09:09:23');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`);

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  ADD CONSTRAINT `seguimiento_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  ADD CONSTRAINT `seguimiento_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
