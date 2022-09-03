-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2021 a las 21:04:16
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tranquera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mercados`
--

CREATE TABLE `mercados` (
  `id` int(10) UNSIGNED NOT NULL,
  `mercado` varchar(45) NOT NULL,
  `valor_1` varchar(45) NOT NULL,
  `valor_2` varchar(45) DEFAULT NULL,
  `valor_3` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mercados`
--

INSERT INTO `mercados` (`id`, `mercado`, `valor_1`, `valor_2`, `valor_3`, `created_at`, `updated_at`) VALUES
(1, 'Mercados Fecha', '14/04/2020', NULL, NULL, '2020-04-15 01:15:39', '2020-04-15 01:15:39'),
(2, 'Trigo', '300', '400', '500', '2020-04-15 01:15:58', '2020-04-15 01:16:30'),
(3, 'Maíz', '100', '200', '300', '2020-04-15 01:16:18', '2020-04-15 01:16:18'),
(4, 'Girasol', '200', '300', '400', '2020-04-15 01:16:41', '2020-04-15 01:16:41'),
(5, 'Sorgo', '500', '600', '700', '2020-04-15 01:16:53', '2020-04-15 01:16:53'),
(6, 'Soja', '230', '520', '620,60', '2020-04-15 01:17:12', '2020-04-15 01:17:12'),
(7, 'Hacienda Ingreso', '100', '200', NULL, '2020-04-15 01:17:25', '2020-04-15 01:19:10'),
(8, 'Novillos Livianos', '200', '100', NULL, '2020-04-15 01:17:37', '2020-04-15 01:19:18'),
(9, 'Novillos Pesados', '500', '600', NULL, '2020-04-15 01:17:46', '2020-04-15 01:19:26'),
(10, 'Overos Negros', '500', '500', NULL, '2020-04-15 01:17:56', '2020-04-15 01:19:35'),
(11, 'Novillitos', '800', '800', NULL, '2020-04-15 01:18:05', '2020-04-15 01:19:47'),
(12, 'Vaquillonas', '400', '500', NULL, '2020-04-15 01:18:15', '2020-04-15 01:19:56'),
(13, 'Vacas de consumo', '200', '300', NULL, '2020-04-15 01:18:24', '2020-04-15 01:20:21'),
(14, 'Toros', '500', '600', NULL, '2020-04-15 01:20:32', '2020-04-15 01:20:32'),
(15, 'Capón gral.', '500', '420', NULL, '2020-04-15 01:21:11', '2020-04-15 01:21:11'),
(16, 'Capón sin tipificar', '400', '500', NULL, '2020-04-15 01:21:30', '2020-04-15 01:21:30'),
(17, 'Capón tipificado', '500', '420', NULL, '2020-04-15 01:21:42', '2020-04-15 01:21:42'),
(18, 'Chanchas', '200', '200', NULL, '2020-04-15 01:22:00', '2020-04-15 01:22:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0000_00_00_000000_mautic_api_consumer_key', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `copete` varchar(1000) NOT NULL,
  `videoyt_codigo_v_youtube` varchar(45) DEFAULT NULL,
  `autor` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `rtf_texto` text,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `sino_es_destacada` char(2) NOT NULL,
  `file_imagen` varchar(200) DEFAULT NULL,
  `urlencode_html_para_embeber` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `seccion_id`, `titulo`, `copete`, `videoyt_codigo_v_youtube`, `autor`, `fecha`, `rtf_texto`, `created_at`, `updated_at`, `sino_es_destacada`, `file_imagen`, `urlencode_html_para_embeber`) VALUES
(1, 1, 'Prueba-TESTE', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-05-19', '<p>&nbsp;</p><p>De una cosecha 2019/2020 que según el Gobierno cerraría en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p><p>Con estos números, quedarían libres poco más de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. Más allá de que casi el 80% de la cosecha está comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora está faltando oferta.</p><p>Sin embargo, Pelegrina cruzó ese argumento: Los productores no están reteniendo ventas, están actuando igual que siempre, no hay una especulación; cuando les conviene venden.</p><p>Para el presidente de la Rural, no hay del lado de la oferta una restricción. Agregó que la producción obtenida es mucho mayor que el consumo y remarcó que se viene de un nivel récord.</p><p>Si bien los molinos demandarían este año 6,6 millones de toneladas, en ese número están incluidos más de 2,5 millones de toneladas para pan, otro tanto para otros panificados y también para exportación como harina.</p><p>Respecto de las charlas entre molinos y exportadores, Pelegrina indicó: Si los exportadores están pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra.</p><p>La solución tiene que salir de ellos y ojalá el Estado no se meta, añadió el dirigente e insistió respecto de los productores: No están reteniendo ni especulando.</p><p>Pelegrina subrayó que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurrió durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p><p>Por lo pronto, los molinos y los exportadores están trabajando en un documento de entendimiento para el abastecimiento interno.</p><p>Tenemos compromisos asumidos con la Secretaría de Comercio que van a ser difíciles de contener si no se aceita la oferta y se tranquiliza el precio. Después, por otro lado, está el abastecimiento para el resto de la campaña ya que los números tal como están hoy no cierran, contó una fuente del sector molinero.</p><p>&nbsp;</p><p>&nbsp;</p>', '2020-01-16 02:00:35', '2020-05-23 20:45:29', 'SI', 'Noticia/yEM5F5TzWkZFzsjcuUsL6m7id3Nt3o5WgybAa8M8.jpeg', NULL),
(2, 1, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<p>&nbsp;</p><p>De una cosecha 2019/2020 que según el Gobierno cerraría en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p><p>Con estos números, quedarían libres poco más de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. Más allá de que casi el 80% de la cosecha está comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora está faltando oferta.</p><p>Sin embargo, Pelegrina cruzó ese argumento: Los productores no están reteniendo ventas, están actuando igual que siempre, no hay una especulación; cuando les conviene venden.</p><p>Para el presidente de la Rural, no hay del lado de la oferta una restricción. Agregó que la producción obtenida es mucho mayor que el consumo y remarcó que se viene de un nivel récord.</p><p>Si bien los molinos demandarían este año 6,6 millones de toneladas, en ese número están incluidos más de 2,5 millones de toneladas para pan, otro tanto para otros panificados y también para exportación como harina.</p><p>Respecto de las charlas entre molinos y exportadores, Pelegrina indicó: Si los exportadores están pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra.</p><p>La solución tiene que salir de ellos y ojalá el Estado no se meta, añadió el dirigente e insistió respecto de los productores: No están reteniendo ni especulando.</p><p>Pelegrina subrayó que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurrió durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p><p>Por lo pronto, los molinos y los exportadores están trabajando en un documento de entendimiento para el abastecimiento interno.</p><p>Tenemos compromisos asumidos con la Secretaría de Comercio que van a ser difíciles de contener si no se aceita la oferta y se tranquiliza el precio. Después, por otro lado, está el abastecimiento para el resto de la campaña ya que los números tal como están hoy no cierran, contó una fuente del sector molinero.</p><p>&nbsp;</p><p>&nbsp;</p>', '2020-01-16 07:00:35', '2020-05-23 19:41:38', 'NO', NULL, NULL),
(3, 1, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(4, 1, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(5, 2, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', '4j1Al_bxcdE', 'Martín Rogero', '2020-01-15', '<p>&nbsp;</p><p>&nbsp;</p><p>De una cosecha 2019/2020 que según el Gobierno cerraría en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p><p>Con estos números, quedarían libres poco más de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. Más allá de que casi el 80% de la cosecha está comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora está faltando oferta.</p><p>Sin embargo, Pelegrina cruzó ese argumento: Los productores no están reteniendo ventas, están actuando igual que siempre, no hay una especulación; cuando les conviene venden.</p><p>Para el presidente de la Rural, no hay del lado de la oferta una restricción. Agregó que la producción obtenida es mucho mayor que el consumo y remarcó que se viene de un nivel récord.</p><p>Si bien los molinos demandarían este año 6,6 millones de toneladas, en ese número están incluidos más de 2,5 millones de toneladas para pan, otro tanto para otros panificados y también para exportación como harina.</p><p>Respecto de las charlas entre molinos y exportadores, Pelegrina indicó: Si los exportadores están pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra.</p><p>La solución tiene que salir de ellos y ojalá el Estado no se meta, añadió el dirigente e insistió respecto de los productores: No están reteniendo ni especulando.</p><p>Pelegrina subrayó que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurrió durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p><p>Por lo pronto, los molinos y los exportadores están trabajando en un documento de entendimiento para el abastecimiento interno.</p><p>Tenemos compromisos asumidos con la Secretaría de Comercio que van a ser difíciles de contener si no se aceita la oferta y se tranquiliza el precio. Después, por otro lado, está el abastecimiento para el resto de la campaña ya que los números tal como están hoy no cierran, contó una fuente del sector molinero.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '2020-01-16 07:00:35', '2020-03-06 02:47:47', 'SI', NULL, NULL),
(6, 2, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>De una cosecha 2019/2020 que según el Gobierno cerraría en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p><p>Con estos números, quedarían libres poco más de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. Más allá de que casi el 80% de la cosecha está comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora está faltando oferta.</p><p>Sin embargo, Pelegrina cruzó ese argumento: Los productores no están reteniendo ventas, están actuando igual que siempre, no hay una especulación; cuando les conviene venden.</p><p>Para el presidente de la Rural, no hay del lado de la oferta una restricción. Agregó que la producción obtenida es mucho mayor que el consumo y remarcó que se viene de un nivel récord.</p><p>Si bien los molinos demandarían este año 6,6 millones de toneladas, en ese número están incluidos más de 2,5 millones de toneladas para pan, otro tanto para otros panificados y también para exportación como harina.</p><p>Respecto de las charlas entre molinos y exportadores, Pelegrina indicó: Si los exportadores están pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra.</p><p>La solución tiene que salir de ellos y ojalá el Estado no se meta, añadió el dirigente e insistió respecto de los productores: No están reteniendo ni especulando.</p><p>Pelegrina subrayó que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurrió durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p><p>Por lo pronto, los molinos y los exportadores están trabajando en un documento de entendimiento para el abastecimiento interno.</p><p>Tenemos compromisos asumidos con la Secretaría de Comercio que van a ser difíciles de contener si no se aceita la oferta y se tranquiliza el precio. Después, por otro lado, está el abastecimiento para el resto de la campaña ya que los números tal como están hoy no cierran, contó una fuente del sector molinero.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '2020-01-16 07:00:35', '2020-03-06 02:48:14', 'SI', NULL, NULL),
(7, 2, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(8, 2, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', 'A_52bGg0Lqs', 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-18 17:59:03', 'SI', NULL, NULL),
(9, 3, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(10, 3, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(11, 3, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(12, 3, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(13, 4, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(14, 4, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(15, 4, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL);
INSERT INTO `noticias` (`id`, `seccion_id`, `titulo`, `copete`, `videoyt_codigo_v_youtube`, `autor`, `fecha`, `rtf_texto`, `created_at`, `updated_at`, `sino_es_destacada`, `file_imagen`, `urlencode_html_para_embeber`) VALUES
(16, 4, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(17, 5, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 02:42:20', 'SI', NULL, NULL),
(18, 5, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(19, 5, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<p>&nbsp;</p><p>De una cosecha 2019/2020 que según el Gobierno cerraría en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p><p>Con estos números, quedarían libres poco más de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. Más allá de que casi el 80% de la cosecha está comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora está faltando oferta.</p><p>Sin embargo, Pelegrina cruzó ese argumento: Los productores no están reteniendo ventas, están actuando igual que siempre, no hay una especulación; cuando les conviene venden.</p><p>Para el presidente de la Rural, no hay del lado de la oferta una restricción. Agregó que la producción obtenida es mucho mayor que el consumo y remarcó que se viene de un nivel récord.</p><p>Si bien los molinos demandarían este año 6,6 millones de toneladas, en ese número están incluidos más de 2,5 millones de toneladas para pan, otro tanto para otros panificados y también para exportación como harina.</p><p>Respecto de las charlas entre molinos y exportadores, Pelegrina indicó: Si los exportadores están pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra.</p><p>La solución tiene que salir de ellos y ojalá el Estado no se meta, añadió el dirigente e insistió respecto de los productores: No están reteniendo ni especulando.</p><p>Pelegrina subrayó que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurrió durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p><p>Por lo pronto, los molinos y los exportadores están trabajando en un documento de entendimiento para el abastecimiento interno.</p><p>Tenemos compromisos asumidos con la Secretaría de Comercio que van a ser difíciles de contener si no se aceita la oferta y se tranquiliza el precio. Después, por otro lado, está el abastecimiento para el resto de la campaña ya que los números tal como están hoy no cierran, contó una fuente del sector molinero.</p><p>&nbsp;</p><p>&nbsp;</p>', '2020-01-16 07:00:35', '2020-03-06 03:09:01', 'SI', NULL, NULL),
(20, 5, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(21, 6, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(22, 6, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL),
(23, 6, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 02:41:51', 'SI', NULL, NULL),
(24, 6, 'Para Pelegrina, los productores no están reteniendo ni especulando con el trigo', 'En medio de las negociaciones que -a pedido del Gobierno- comenzaron los molinos harineros y los exportadores para asegurar el abastecimiento interno de trigo, el presidente de la Sociedad Rural Argentina (SRA), Daniel Pelegrina, opinó que está bien que ambos sectores estén con esas gestiones, pero remarcó que trigo sobra y que el productor no está reteniendo ni especulando.', NULL, 'Martín Rogero', '2020-01-15', '<div id=i4c-draggable-container style=position: fixed; z-index: 1499; width: 0px; height: 0px;>\r\n<div class=resolved data-reactroot= style=all: initial;>&nbsp;</div>\r\n</div>\r\n\r\n<p>De una cosecha 2019/2020 que seg&uacute;n el Gobierno cerrar&iacute;a en 19 millones de toneladas, los exportadores tienen comprometido un volumen de 13,44 millones de toneladas y los molinos harineros 1,35 millones de toneladas.</p>\r\n\r\n<p>Con estos n&uacute;meros, quedar&iacute;an libres poco m&aacute;s de 4 millones de toneladas. El mercado de trigo se puso tirante con precios firmes. M&aacute;s all&aacute; de que casi el 80% de la cosecha est&aacute; comprometida, en su mayor parte para los exportadores, los compradores sostienen que ahora est&aacute; faltando oferta.</p>\r\n\r\n<p>Sin embargo, Pelegrina cruz&oacute; ese argumento: &quot;Los productores no est&aacute;n reteniendo ventas, est&aacute;n actuando igual que siempre, no hay una especulaci&oacute;n; cuando les conviene venden&quot;.</p>\r\n\r\n<p>Para el presidente de la Rural, &quot;no hay del lado de la oferta una restricci&oacute;n&quot;. Agreg&oacute; que la producci&oacute;n obtenida es &quot;mucho mayor que el consumo&quot; y remarc&oacute; que se viene de un nivel r&eacute;cord.</p>\r\n\r\n<p>Si bien los molinos demandar&iacute;an este a&ntilde;o 6,6 millones de toneladas, en ese n&uacute;mero est&aacute;n incluidos m&aacute;s de 2,5 millones de toneladas para pan, otro tanto para otros panificados y tambi&eacute;n para exportaci&oacute;n como harina.</p>\r\n\r\n<p>Respecto de las charlas entre molinos y exportadores, Pelegrina indic&oacute;: &quot;Si los exportadores est&aacute;n pasados respecto del consumo interno (por las compras de los molinos), lo tienen que arreglar entre ellos; trigo sobra&quot;.</p>\r\n\r\n<p>&quot;La soluci&oacute;n tiene que salir de ellos y ojal&aacute; el Estado no se meta&quot;, a&ntilde;adi&oacute; el dirigente e insisti&oacute; respecto de los productores: &quot;No est&aacute;n reteniendo ni especulando&quot;.</p>\r\n\r\n<p>Pelegrina subray&oacute; que el sector no quiere que se impongan medidas que puedan afectar a la actividad como ocurri&oacute; durante la segunda presidencia de Cristina Kirchner con permisos y cupos para exportar.</p>\r\n\r\n<p>Por lo pronto, los molinos y los exportadores est&aacute;n trabajando en un documento de entendimiento para el abastecimiento interno.</p>\r\n\r\n<p>&quot;Tenemos compromisos asumidos con la Secretar&iacute;a de Comercio que van a ser dif&iacute;ciles de contener si no se aceita la oferta y se tranquiliza el precio. Despu&eacute;s, por otro lado, est&aacute; el abastecimiento para el resto de la campa&ntilde;a ya que los n&uacute;meros tal como est&aacute;n hoy no cierran&quot;, cont&oacute; una fuente del sector molinero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=i4c-dialogs-container>&nbsp;</div>', '2020-01-16 07:00:35', '2020-01-16 07:01:46', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_de_opcion` varchar(55) DEFAULT NULL,
  `no_listar_campos` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `acciones_extra` varchar(250) DEFAULT NULL,
  `no_mostrar_campos_abm` varchar(500) DEFAULT NULL,
  `permisos` char(5) DEFAULT NULL,
  `seteo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `nombre_de_opcion`, `no_listar_campos`, `created_at`, `updated_at`, `acciones_extra`, `no_mostrar_campos_abm`, `permisos`, `seteo`) VALUES
(2, 'User', 'password|remember_token|', '2018-10-30 22:35:50', '2018-10-30 22:35:50', NULL, NULL, NULL, NULL),
(6, 'Publicidades', NULL, '2019-07-11 03:42:10', '2020-01-15 22:01:59', NULL, 'ubicacion_de_publicidad_id', 'UR', NULL),
(7, 'mercado', '', '2020-04-19 19:14:49', '2020-04-19 19:14:49', '', '', 'RU', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fernandomadoz@hotmail.com', '$2y$10$yeDX91rfzu9DxfLSEoIXCOhXmcbaonxQ/W41e0qJOrulh51Egd8am', '2019-01-29 21:22:21'),
('gnosis.araruama@gmail.com', '$2y$10$BaShLwBsEaP0Bb734rSK9uZHJvdAEpz10Q/HcNziAYlgr/JfWFyiS', '2019-04-22 23:05:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidades`
--

CREATE TABLE `publicidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `ubicacion_de_publicidad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `url_enlace` varchar(200) NOT NULL,
  `file_imagen_pc` varchar(200) NOT NULL,
  `file_imagen_movil` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicidades`
--

INSERT INTO `publicidades` (`id`, `ubicacion_de_publicidad_id`, `created_at`, `updated_at`, `url_enlace`, `file_imagen_pc`, `file_imagen_movil`) VALUES
(1, 1, '2020-01-15 20:08:06', '2020-05-15 19:44:02', 'https://www.deere.com.ar', 'Publicidad/llafnogqt4ITi5ZFCaHteYITu1Be3lkg5WSFa1qC.gif', 'Publicidad/llafnogqt4ITi5ZFCaHteYITu1Be3lkg5WSFa1qC.gif'),
(2, 2, '2020-01-15 20:26:09', '2020-05-15 19:51:46', 'https://www.deere.com.ar', 'Publicidad/CLEDJwdp4iNJLLFdyRg7Wc5XXrhYaHKVFxUzu6sq.jpeg', 'Publicidad/CLEDJwdp4iNJLLFdyRg7Wc5XXrhYaHKVFxUzu6sq.jpeg'),
(3, 3, '2020-01-15 20:26:52', '2020-06-15 03:28:14', 'https://www.deere.com.ar', 'Publicidad/9VFTgy6bkO7VbRgDj8pYlas4NfX01gO6080B239H.jpeg', 'Publicidad/zbZF5a6vfQDYBFUk9JGDmESaVyy0M4szEChR1xpp.jpeg'),
(4, 6, '2020-01-16 01:08:06', '2020-05-15 19:53:16', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(5, 8, '2020-01-16 01:08:06', '2020-01-16 01:08:06', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(6, 10, '2020-01-16 01:08:06', '2020-01-16 01:08:06', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(7, 12, '2020-01-16 01:08:06', '2020-01-16 01:08:06', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(8, 14, '2020-01-16 01:08:06', '2020-01-16 01:08:06', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(9, 16, '2020-01-16 01:08:06', '2020-01-16 01:08:06', 'https://www.deere.com.ar', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg', 'Publicidad/4umR5XGkS9Ne5B4NuCVcJyznQ8hYBCBqYXaXxdPy.jpeg'),
(10, 4, '2020-01-16 01:26:52', '2020-05-15 19:55:31', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(11, 5, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(12, 7, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(13, 9, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(14, 11, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(15, 13, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(16, 15, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg'),
(17, 17, '2020-01-16 01:26:52', '2020-01-16 01:26:52', 'https://www.deere.com.ar', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg', 'Publicidad/8Hh5XeJkuchOByKeIwTvTSmfVjnFpqMXIhKCRB32.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_de_usuario`
--

CREATE TABLE `roles_de_usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `rol_de_usuario` varchar(45) NOT NULL,
  `nivel_de_acceso` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles_de_usuario`
--

INSERT INTO `roles_de_usuario` (`id`, `rol_de_usuario`, `nivel_de_acceso`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 1, '2018-10-30 22:38:21', '2018-12-12 17:43:14'),
(2, 'Gestor de contenidos', 2, '2018-10-30 22:38:28', '2018-12-12 17:43:24'),
(3, '', 0, '2018-12-12 17:43:29', '2019-03-02 04:37:17'),
(4, '', 0, '2019-03-02 04:37:25', '2019-03-02 04:37:25'),
(5, '', 0, '2019-03-13 15:34:54', '2019-03-13 15:34:54'),
(6, '', 0, '2019-03-16 17:11:01', '2019-03-22 15:32:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `orden` int(10) UNSIGNED NOT NULL,
  `colpick_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `seccion`, `created_at`, `updated_at`, `orden`, `colpick_color`) VALUES
(1, 'Info General', '2020-01-15 23:17:07', '2020-01-16 17:59:58', 1, '#dfbc3b'),
(2, 'Agricultura', '2020-01-15 23:17:57', '2020-01-16 17:58:51', 2, '#77bff3'),
(3, 'Ganaderia', '2020-01-15 23:18:12', '2020-01-16 17:59:37', 3, '#f14ee3'),
(4, 'Mercados', '2020-01-15 23:18:20', '2020-01-16 18:00:14', 4, '#eff61e'),
(5, 'AGTech', '2020-01-15 23:18:31', '2020-01-16 17:59:10', 5, '#9cee3b'),
(6, 'CYT', '2020-01-15 23:18:40', '2020-01-16 17:59:21', 6, '#f83333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubiaciones_de_publicidad`
--

CREATE TABLE `ubiaciones_de_publicidad` (
  `id` int(10) UNSIGNED NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubiaciones_de_publicidad`
--

INSERT INTO `ubiaciones_de_publicidad` (`id`, `ubicacion`, `created_at`, `updated_at`) VALUES
(1, 'Home Top', '2020-01-15 19:59:02', '2020-01-15 19:59:02'),
(2, 'Home Top Mercados', '2020-01-15 20:00:52', '2020-01-15 20:00:52'),
(3, 'Home Top Nosotros', '2020-01-15 20:01:09', '2020-01-15 20:01:09'),
(4, 'Home Bajo Nosotros', '2020-01-15 20:01:24', '2020-01-15 20:01:24'),
(5, 'Home Footer', '2020-01-15 20:02:07', '2020-01-15 20:02:07'),
(6, 'Info General Top', '2020-01-15 20:02:24', '2020-01-15 20:02:24'),
(7, 'Info General Footer', '2020-01-15 20:02:37', '2020-01-15 20:02:37'),
(8, 'Agricultura Top', '2020-01-15 20:03:00', '2020-01-15 20:03:00'),
(9, 'Agricultura Footer', '2020-01-15 20:03:11', '2020-01-15 20:03:11'),
(10, 'Ganaderia Top', '2020-01-15 20:03:33', '2020-01-15 20:03:33'),
(11, 'Ganaderia Footer', '2020-01-15 20:03:42', '2020-01-15 20:03:42'),
(12, 'Mercados Top', '2020-01-15 20:04:26', '2020-01-15 20:04:26'),
(13, 'Mercados Footer', '2020-01-15 20:04:35', '2020-01-15 20:04:35'),
(14, 'AGTech Top', '2020-01-15 20:05:02', '2020-01-15 20:05:02'),
(15, 'AGTech Footer', '2020-01-15 20:05:10', '2020-01-15 20:05:10'),
(16, 'CYT Top', '2020-01-15 20:05:47', '2020-01-15 20:05:47'),
(17, 'CYT Footer', '2020-01-15 20:05:58', '2020-01-15 20:05:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rol_de_usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `telegram_chat_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `rol_de_usuario_id`, `telegram_chat_id`, `celular`) VALUES
(1, 'Fernando', 'fernandomadoz@hotmail.com', '$2y$10$ce/BlY9WgswNehJBHZGmWu8agaMCc2ce.YS3z9kWqFaysM9.8wAO6', 'LBA8ldedEtGU9UcTMoFDaZd6Q7lyjdJmuamatfTolFYHABTo3Hltfr3CNFrB', '2018-10-24 03:09:31', '2019-04-04 01:24:07', 1, '632979534', '+5493804201747'),
(2, 'Tranquera Abierta', 'info@tranqueraabierta.com.ar', '$2y$10$ROOEOdqb8Llp9nil3GMlVO1PVjhdy9GogvTuYjE7CISIlF/JeYZbO', 'Tvb9VCWCLHtvjY5Izz35QDAQpZhOfHLCAm8lp9y9QI7bjFFAnPdYCI5hwtRc', '2020-01-15 19:29:41', '2020-01-15 21:52:27', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `videoyt_codigo_v_youtube` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `videoyt_codigo_v_youtube`, `created_at`, `updated_at`) VALUES
(1, 'Mariano Andrade: “El caballo Criollo nos hace volver a nuestras raíces”', 'CtqyqugTwH4', '2020-01-18 16:31:24', '2020-01-18 16:32:06'),
(2, 'Tranquera Abierta Digital: “El campo siempre da revancha”', '9WlFEhxZbnc', '2020-01-18 16:31:54', '2020-01-18 16:31:54'),
(3, 'La provincia tendría su propio sistema de riesgo agropecuario', 'LmoRpZqp_CE', '2020-01-18 16:32:28', '2020-01-18 16:32:28'),
(4, 'Cisneros: “Hay que preparar los campos más para la sequía que para las inundaciones”', 'mqAv1Y_l8wk', '2020-01-18 16:32:47', '2020-01-18 16:32:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mercados`
--
ALTER TABLE `mercados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_noticias_1` (`seccion_id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `publicidades`
--
ALTER TABLE `publicidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_publicidades_1` (`ubicacion_de_publicidad_id`);

--
-- Indices de la tabla `roles_de_usuario`
--
ALTER TABLE `roles_de_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubiaciones_de_publicidad`
--
ALTER TABLE `ubiaciones_de_publicidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `FK_users_2` (`rol_de_usuario_id`) USING BTREE;

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mercados`
--
ALTER TABLE `mercados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `publicidades`
--
ALTER TABLE `publicidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `roles_de_usuario`
--
ALTER TABLE `roles_de_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ubiaciones_de_publicidad`
--
ALTER TABLE `ubiaciones_de_publicidad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `FK_noticias_1` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `publicidades`
--
ALTER TABLE `publicidades`
  ADD CONSTRAINT `FK_publicidades_1` FOREIGN KEY (`ubicacion_de_publicidad_id`) REFERENCES `ubiaciones_de_publicidad` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_2` FOREIGN KEY (`rol_de_usuario_id`) REFERENCES `roles_de_usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
