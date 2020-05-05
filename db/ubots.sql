-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Maio-2020 às 20:02
-- Versão do servidor: 5.6.40-log
-- versão do PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubots`
--
CREATE DATABASE IF NOT EXISTS `ubots` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ubots`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(3) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`) VALUES
(1, 'Vinicius', '0000.000.000.01'),
(2, 'Marcos', '0000.000.000.02'),
(3, 'Joel', '0000.000.000.03'),
(4, 'Gustavo', '0000.000.000.04'),
(5, 'Raquel', '0000.000.000.05'),
(6, 'Pamela', '0000.000.000.06'),
(7, 'Bruno', '0000.000.000.07'),
(8, 'Jonathan', '0000.000.000.08'),
(9, 'Matheus', '0000.000.000.09'),
(10, 'Rafael', '0000.000.000.10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `codigo` varchar(100) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `variedade` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `safra` varchar(10) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`codigo`, `produto`, `variedade`, `pais`, `categoria`, `safra`, `preco`) VALUES
('3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', 'Casa Silva Reserva', 'Cabernet Sauvignon', 'Chile', 'Tinto', '2014', 79),
('3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', 'Casa Silva Reserva', 'Carménère', 'Chile', 'Tinto', '2014', 79),
('4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Reserva', 'Chardonnay', 'Chile', 'Branco', '2016', 79),
('4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Punto Final Etiqueta Branca', 'Malbec', 'Argentina', 'Tinto', '2010', 98),
('b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2013', 55),
('b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Maius Priorat', 'Garnacha', 'Espanha', 'Tinto', '2008', 158),
('d71b54eb-1182-468e-9512-bda1ea8cb35d', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('d71b54eb-1182-468e-9512-bda1ea8cb35d', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('d71b54eb-1182-468e-9512-bda1ea8cb35d', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('30769c65-2c2d-4e59-9ed6-29f11851f993', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('30769c65-2c2d-4e59-9ed6-29f11851f993', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('0eed7137-26ae-4c94-94db-9211083c4d61', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('0eed7137-26ae-4c94-94db-9211083c4d61', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('c32e8495-4a81-4264-a7c6-873dc9412c00', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('c32e8495-4a81-4264-a7c6-873dc9412c00', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('c32e8495-4a81-4264-a7c6-873dc9412c00', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('c32e8495-4a81-4264-a7c6-873dc9412c00', 'Casa Silva Reserva', 'Cabernet Sauvignon', 'Chile', 'Tinto', '2014', 79),
('c32e8495-4a81-4264-a7c6-873dc9412c00', 'Casa Silva Reserva', 'Carménère', 'Chile', 'Tinto', '2014', 79),
('138e8089-3b89-48e9-8ed1-ee937b598596', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('138e8089-3b89-48e9-8ed1-ee937b598596', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('138e8089-3b89-48e9-8ed1-ee937b598596', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2013', 55),
('570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2013', 55),
('c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('e996a81a-961a-47b7-8ba9-bdf16294c9eb', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('e996a81a-961a-47b7-8ba9-bdf16294c9eb', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('2536d496-9030-43ab-ad04-9a3e861395ae', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('2536d496-9030-43ab-ad04-9a3e861395ae', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('2536d496-9030-43ab-ad04-9a3e861395ae', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', '2010', 66.8),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('c99f065b-5596-4e13-a745-9c713331a814', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('c99f065b-5596-4e13-a745-9c713331a814', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('c99f065b-5596-4e13-a745-9c713331a814', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('c99f065b-5596-4e13-a745-9c713331a814', 'Maius Priorat', 'Garnacha', 'Espanha', 'Tinto', '2008', 158),
('a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', '2008', 158),
('d18c1086-e9ef-4936-a239-050fc485ff43', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('d18c1086-e9ef-4936-a239-050fc485ff43', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('4b517823-8ac9-47f2-80c9-651e2e396d73', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('4b517823-8ac9-47f2-80c9-651e2e396d73', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('4b517823-8ac9-47f2-80c9-651e2e396d73', 'Punto Final Etiqueta Negra', 'Malbec', 'Argentina', 'Tinto', '2012', 59.9),
('4b517823-8ac9-47f2-80c9-651e2e396d73', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', '2015', 59.9),
('e1d37861-24b7-458f-a00d-efcf96d3d0d1', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('e1d37861-24b7-458f-a00d-efcf96d3d0d1', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2007', 140),
('f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2013', 55),
('f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('64ed4243-8a51-4d28-be67-909319e99c4e', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', '2013', 55),
('64ed4243-8a51-4d28-be67-909319e99c4e', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('64ed4243-8a51-4d28-be67-909319e99c4e', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('dc5d468b-5d16-451b-865a-0265228e8610', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('39130632-90f6-452a-9236-91d815ea7fdb', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('39130632-90f6-452a-9236-91d815ea7fdb', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('39130632-90f6-452a-9236-91d815ea7fdb', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('8d38d75f-e612-4d65-b597-2ff92b574a88', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('8d38d75f-e612-4d65-b597-2ff92b574a88', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', '2012', 258),
('ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('52e58136-4116-4b37-8559-b4006aa58285', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('52e58136-4116-4b37-8559-b4006aa58285', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('52e58136-4116-4b37-8559-b4006aa58285', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('70a1b917-d457-478b-a075-fba5554d6362', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('70a1b917-d457-478b-a075-fba5554d6362', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('70a1b917-d457-478b-a075-fba5554d6362', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('70a1b917-d457-478b-a075-fba5554d6362', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('d1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('d1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', '2009', 120),
('603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', '2009', 110),
('6f0bee3e-4988-4e23-83f6-c28af6ba0464', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', '2015', 79),
('89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', '2013', 55),
('89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('fc41d3a1-1eef-49c5-905c-d19e747eb6c5', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('7405ad98-ca99-4fd3-994f-85be49633141', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', '2013', 55),
('7405ad98-ca99-4fd3-994f-85be49633141', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('b0d17108-5b79-41f2-a31c-77f2d05775d3', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('17f00e57-cc0c-4d5f-ac92-367855eb64a1', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('17f00e57-cc0c-4d5f-ac92-367855eb64a1', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('38ef8665-61df-4402-94f8-3c9b28ab7123', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('38ef8665-61df-4402-94f8-3c9b28ab7123', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('38ef8665-61df-4402-94f8-3c9b28ab7123', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', '2015', 59.9),
('7a6aeaec-18db-4339-b87a-500dac29e1cb', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', '2009', 298),
('7a6aeaec-18db-4339-b87a-500dac29e1cb', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', '2015', 59.9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `codigo` varchar(100) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `valorTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`codigo`, `cliente`, `data`, `valorTotal`) VALUES
('0b83c705-216a-4e7c-9947-9b702edcce1a', '0000.000.000.07', '2016-04-02', 390),
('0eed7137-26ae-4c94-94db-9211083c4d61', '0000.000.000.09', '2016-11-08', 324.8),
('1194a8cb-b693-40dd-a3d2-23f9f343d36c', '0000.000.000.08', '2016-09-15', 230),
('138e8089-3b89-48e9-8ed1-ee937b598596', '0000.000.000.05', '2016-08-08', 265.8),
('17f00e57-cc0c-4d5f-ac92-367855eb64a1', '0000.000.000.08', '2016-08-11', 596),
('1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', '0000.000.000.02', '2016-06-03', 423),
('2536d496-9030-43ab-ad04-9a3e861395ae', '0000.000.000.01', '2016-07-04', 571),
('30769c65-2c2d-4e59-9ed6-29f11851f993', '0000.000.000.08', '2016-10-07', 324.8),
('38ef8665-61df-4402-94f8-3c9b28ab7123', '0000.000.000.06', '2016-09-17', 655.9),
('39130632-90f6-452a-9236-91d815ea7fdb', '0000.000.000.06', '2016-06-28', 443),
('3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', '000.000.000.01', '2016-02-19', 158),
('4a7c9be2-5231-4dff-b8e7-9a639286726e', '0000.000.000.02', '2015-10-22', 278),
('4b517823-8ac9-47f2-80c9-651e2e396d73', '0000.000.000.04', '2016-07-15', 369.8),
('517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', '0000.000.000.09', '2016-11-15', 110),
('52e58136-4116-4b37-8559-b4006aa58285', '0000.000.000.06', '2016-11-10', 189),
('570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', '0000.000.000.03', '2016-04-11', 434.8),
('603fce5f-4c78-40f8-b212-d7ed1e27571a', '0000.000.000.08', '2016-07-11', 309),
('64ed4243-8a51-4d28-be67-909319e99c4e', '0000.000.000.04', '2016-07-08', 368),
('6f0bee3e-4988-4e23-83f6-c28af6ba0464', '0000.000.000.03', '2016-08-15', 79),
('70a1b917-d457-478b-a075-fba5554d6362', '0000.000.000.04', '2016-11-12', 309),
('7405ad98-ca99-4fd3-994f-85be49633141', '0000.000.000.04', '2015-05-18', 353),
('7a6aeaec-18db-4339-b87a-500dac29e1cb', '0000.000.000.08', '2016-11-03', 357.9),
('7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', '0000.000.000.04', '2015-05-08', 155),
('89f59951-1312-4f6f-8851-ef0b9c7c4d52', '0000.000.000.02', '2015-05-05', 189),
('8d38d75f-e612-4d65-b597-2ff92b574a88', '0000.000.000.08', '2016-07-18', 175),
('918b08fa-402b-4eaf-acc3-ebf8ecd864dc', '0000.000.000.05', '2016-10-10', 566),
('a657fc5a-10d0-48ca-ac97-100ba13c6f72', '0000.000.000.03', '2016-08-04', 408),
('b0d17108-5b79-41f2-a31c-77f2d05775d3', '0000.000.000.04', '2015-06-17', 298),
('b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', '0000.000.000.04', '2016-12-04', 208),
('b503fbff-96c6-4da7-a3ff-daa03291c0b9', '0000.000.000.10', '2016-08-22', 350),
('beae2d56-7ca3-4280-ae36-ad3b2a1f742c', '0000.000.000.08', '2016-07-18', 230),
('c32e8495-4a81-4264-a7c6-873dc9412c00', '0000.000.000.03', '2015-02-07', 640.8),
('c99f065b-5596-4e13-a745-9c713331a814', '0000.000.000.05', '2016-10-02', 566),
('c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', '0000.000.000.07', '2016-04-10', 368),
('ce42787a-05da-4701-a33e-aef56ee8cc2a', '0000.000.000.08', '2016-07-18', 488),
('d1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', '0000.000.000.10', '2016-10-07', 199),
('d18c1086-e9ef-4936-a239-050fc485ff43', '0000.000.000.08', '2015-12-07', 250),
('d71b54eb-1182-468e-9512-bda1ea8cb35d', '0000.000.000.06', '2014-05-08', 622.8),
('da9026e6-a6da-4a63-ab1d-606ca74b40be', '0000.000.000.02', '2016-06-15', 418),
('dc5d468b-5d16-451b-865a-0265228e8610', '0000.000.000.07', '2016-08-10', 512),
('e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', '0000.000.000.08', '2016-07-18', 230),
('e1d37861-24b7-458f-a00d-efcf96d3d0d1', '0000.000.000.07', '2016-03-11', 250),
('e7c58b49-1707-49f7-af0c-0d99ed1c0498', '0000.000.000.09', '2015-08-17', 444.8),
('e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', '0000.000.000.05', '2016-10-14', 254),
('e996a81a-961a-47b7-8ba9-bdf16294c9eb', '0000.000.000.07', '2016-06-08', 313),
('f74f5755-ca62-4d67-86ee-fa557f1cc347', '0000.000.000.03', '2016-06-10', 230),
('f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', '0000.000.000.05', '2016-06-01', 647.8),
('fb5c14ac-6659-4693-b766-3f60a4e5518b', '0000.000.000.10', '2015-07-12', 428.8),
('fc41d3a1-1eef-49c5-905c-d19e747eb6c5', '0000.000.000.04', '2015-08-06', 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
