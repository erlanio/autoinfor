-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Out-2020 às 14:58
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `autoinfor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `descCategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `descCategoria`) VALUES
(4, 'teste'),
(5, 'Novo'),
(6, 'Usado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` int(11) NOT NULL,
  `descMarca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`idMarca`, `descMarca`) VALUES
(3, 'FIAT'),
(4, 'WOLKS'),
(5, 'zzzz');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nome`, `email`, `senha`, `telefone`) VALUES
(13, 'PEDRO JORGE COMUNISTA', 'VIVAOCOMUNISCO@GMAIL.COM', 'eec8bf17eff4ab9cc0cf1857def32b8e', '12313');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `idVeiculo` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `anoFabricacao` int(11) NOT NULL,
  `anoModelo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `valor` double NOT NULL,
  `km` int(11) NOT NULL,
  `imgPrincipal` varchar(45) NOT NULL,
  `img1` varchar(32) DEFAULT NULL,
  `img2` varchar(32) DEFAULT NULL,
  `img3` varchar(32) DEFAULT NULL,
  `dtCadastro` date NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`idVeiculo`, `idCategoria`, `idMarca`, `idUsuario`, `modelo`, `anoFabricacao`, `anoModelo`, `descricao`, `valor`, `km`, `imgPrincipal`, `img1`, `img2`, `img3`, `dtCadastro`, `ativo`) VALUES
(2, 4, 2, 10, 'palio', 2020, 0, 'pojpfjwf', 123131, 120, '8334e2f27bf0acc591d759ce5c3dc226.jpg', '', '', '', '2020-09-18', 's'),
(3, 4, 3, 10, 'palio', 2020, 2020, 'pojpfjwf', 123131, 120, 'e2972a34a9fa2782e7da4603048031e2.png', '', '', '', '2020-09-18', 's'),
(4, 5, 4, 10, 'GOL', 2010, 2011, 'Descricao', 18000, 100000, '77a79c78f309224f4a9dd3112b97939e.png', '', '', '', '2020-09-18', 's');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`idVeiculo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
