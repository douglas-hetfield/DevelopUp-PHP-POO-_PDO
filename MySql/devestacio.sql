-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Jun-2018 às 22:15
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devestacio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `archive`
--

CREATE TABLE `archive` (
  `idArchive` int(11) NOT NULL,
  `about` varchar(20) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `idMensagem` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `mensagem` varchar(300) NOT NULL,
  `timer` datetime NOT NULL,
  `ip` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`idMensagem`, `idPessoa`, `mensagem`, `timer`, `ip`) VALUES
(14, 2, 'estou aqui mano', '2018-06-06 23:00:22', 0),
(15, 2, 'tudo bem ai?', '2018-06-06 23:10:01', 0),
(16, 1, 'tudo sim !', '2018-06-06 23:10:14', 0),
(17, 2, 'oi tudo bem por ai ?', '2018-06-06 23:10:56', 0),
(18, 1, 'tudo sim !', '2018-06-06 23:11:07', 0),
(19, 1, 'pinsdgbsno ouasdh fouahsduofg auisdg fuags duofguoasd fuoas f asdu fgouasg douf goasdu gfouasg duo fasdoug fa hsdlfhasoidf oasud fuoasgfas', '2018-06-06 23:49:12', 0),
(20, 1, 'adsfasd;kjfnÃ£singÃ³iasn asdiofh ouashduof hasoupdf uipasg diufh asudf upaisd hgÃ³asd hfoa sdopf aspoudh fopuasd pgouasgd pgo sdÃ³gih asdÃ³gihsaÃ³dgi hsÃ³gi hsadlg Ã¡soi hgÃ³asi goÃ­ sahdÂ´goi hsadoÃ­g saÃ³di hgÂ´saoid hgÃ³si hd', '2018-06-07 00:49:14', 0),
(21, 1, 'dgsa', '2018-06-07 00:49:51', 0),
(22, 1, 'dasÃ§kdubds', '2018-06-07 00:53:33', 0),
(23, 1, 'dsag;fkjn', '2018-06-07 00:53:37', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `sobrenome` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pws` varchar(70) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `nome`, `sobrenome`, `email`, `pws`, `color`) VALUES
(1, 'Douglas', 'Teixeira', 'douglas@gmail.com', '20vcCO3eV13yU', '#0000ff'),
(2, 'andre', 'silva', 'andre@gmail.com', '20i4qCtcNM9A.', '#ff0000'),
(3, 'marcelo', NULL, 'mar@gmail.com', '20nK0E4/eR02k', '#00ff40'),
(4, 'dasdfasdf', NULL, 'ADSFASFD@DASFASDG.COM', '20ZObxV5XOJ0A', '#000000'),
(5, 'dsagfsd', 'aSFa', 'asdf@gmail.com', '20KIorrnQ9gB6', '#000000'),
(6, 'sadfas', 'aSFa', 'asf@adsfaaasF', '2087mz8aq0e46', '#000000'),
(7, 'dassaf', 'asdgasd', 'sadf@sadvdsa', '2505UBbt1ocxQ', '#000000'),
(8, 'carlos', 'santana', 'carlos@gmail.com', '25wJljjnji0K2', '#ff0080'),
(9, 'val', 'santana', 'val@gmail.com', '255IeW7gEOB8s', '#0000ff'),
(10, 'carla', 'soares', 'ss@gmail.com', '25zCx8xhNX1JQ', '#00ff00'),
(11, 'carla', 'soares', 'ss@gmail.com', '25zCx8xhNX1JQ', '#00ff00'),
(12, 'flavio', 'Teixeira', 'ft@gmail.com', '25ni8ssEIx0Ks', '#ff8040'),
(13, 'flavio', 'Teixeira', 'ft@gmail.com', '25ni8ssEIx0Ks', '#ff8040'),
(14, 'leo', 'vitor', 'lv@gmail.com', '25LCL0qes8J.Y', '#ff0080'),
(15, 'leo', 'vitor', 'lv@gmail.com', '25LCL0qes8J.Y', '#ff0080'),
(16, 'kley', 'son', 'kley@gmail.com', '25Ma5W2yw///A', '#00ffff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`idArchive`);

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`idMensagem`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `idArchive` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `idMensagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
