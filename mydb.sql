-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2020 às 16:55
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idCorretor` int(11) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `nomeCorretor` varchar(100) NOT NULL,
  `emailCorretor` varchar(100) NOT NULL,
  `confirmarsenha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proponente`
--

CREATE TABLE `proponente` (
  `idProponente` int(11) NOT NULL,
  `cpf_cnpjProponente` varchar(25) NOT NULL,
  `nomeP` varchar(100) NOT NULL,
  `rgP` varchar(10) NOT NULL,
  `emailP` varchar(100) NOT NULL,
  `telP` varchar(11) NOT NULL,
  `endereco` tinytext NOT NULL,
  `documentos` varchar(45) NOT NULL,
  `dtNt` date NOT NULL,
  `nCasaP` varchar(45) NOT NULL,
  `cepP` varchar(45) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `uf` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `proponente`
--

INSERT INTO `proponente` (`idProponente`, `cpf_cnpjProponente`, `nomeP`, `rgP`, `emailP`, `telP`, `endereco`, `documentos`, `dtNt`, `nCasaP`, `cepP`, `bairro`, `uf`) VALUES
(1, '0464809570', 'raian', '090909', 'ra@gmail.com', '929917', 'Rua Canopus', '111', '2020-11-02', '03', '69038000', 'Lírio do Vale', 'AM');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`,`senha`);

--
-- Índices para tabela `proponente`
--
ALTER TABLE `proponente`
  ADD PRIMARY KEY (`idProponente`,`cpf_cnpjProponente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proponente`
--
ALTER TABLE `proponente`
  MODIFY `idProponente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
