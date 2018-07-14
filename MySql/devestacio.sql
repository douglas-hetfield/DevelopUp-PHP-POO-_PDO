-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Jul-2018 às 06:37
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
  `idEnviado` int(11) NOT NULL,
  `about` varchar(20) DEFAULT NULL,
  `description` varchar(150) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `archive`
--

INSERT INTO `archive` (`idArchive`, `idEnviado`, `about`, `description`, `name`, `type`, `data`) VALUES
(19, 1, 'redes', 'Ã‰ uma tabela de mascara de sub-redes em tamanhos variÃ¡veis', 'VLSM.xlsx', 'xlsx', '2018-07-03 02:04:21'),
(20, 1, 'algoritmo', 'Algoritmo do jogo da velha', 'Algoritmo - Visualg - JOGO VELHA.alg', 'alg', '2018-07-03 22:21:34'),
(21, 1, 'redes', 'Comandos de roteador Cisco', 'Codigos rede.docx', 'docx', '2018-07-04 13:53:06'),
(22, 1, 'Linux', 'Comandos BÃ¡sicos no linux', 'COMANDOS DEBIAN.txt', 'txt', '2018-07-04 13:58:04'),
(23, 1, 'redes', 'Comandos de configuraÃ§Ã£o de Interfaces de rede no roteador Cisco ', 'COMANDOS.txt', 'txt', '2018-07-04 14:00:28'),
(24, 1, 'redes', 'Modelo de rede IPv4 com 1 Roteador e 3 switch no Packet Tracer', 'Networks (IPv4).pkt', 'pkt', '2018-07-04 14:03:28'),
(25, 1, 'redes', 'ConfiguraÃ§Ã£o SSH para roteadores Cisco', 'SSH.txt', 'txt', '2018-07-04 14:08:22'),
(26, 1, 'redes', 'ExercÃ­cio de rede wireless no Packet Tracer ', 'Wireless.pkt', 'pkt', '2018-07-04 14:12:41'),
(27, 1, 'pdf', 'EstratÃ©gia para ImplantaÃ§Ã£o de uma Gerencia de Requisitos nÂº1', 'Analise de Requisitos I.pdf', 'pdf', '2018-07-04 14:16:46'),
(28, 1, 'pdf', 'EstratÃ©gia para ImplantaÃ§Ã£o de uma Gerencia de Requisitos NÂº2', 'Analise de Requisitos II.pdf', 'pdf', '2018-07-04 14:17:01'),
(29, 1, 'pdf', 'IntroduÃ§Ã£o a ProgramaÃ§Ã£o', 'Analise de Sistemas.pdf', 'pdf', '2018-07-04 14:21:25'),
(30, 1, 'pdf', 'Trabalho de CPD sobre auditoria', 'Auditoria em Informatica.pdf', 'pdf', '2018-07-04 14:26:33'),
(31, 1, 'pdf', 'Processos de desenvolvimento de sistemas', 'Avaliacao de Sistemas.pdf', 'pdf', '2018-07-04 14:32:20'),
(32, 1, 'pdf', 'Este artigo Ã© baseado na principal ferramenta para as modernas tÃ©cnicas de reengenharia de negÃ³cios.', 'CASE.pdf', 'pdf', '2018-07-04 14:35:04'),
(33, 1, 'Linux', 'InstalaÃ§Ã£o e ConfiguraÃ§Ã£o basica do servidor Apache no Ubuntu', 'Apache bÃ¡sico.pdf', 'pdf', '2018-07-06 14:35:51'),
(34, 1, 'Linux', 'InstalaÃ§Ã£o e configuraÃ§Ã£o do DHCP no linux', 'DHCP.pdf', 'pdf', '2018-07-06 14:42:28'),
(35, 1, 'redes', 'Comandos do IOS Cisco', 'iOS Commands.pdf', 'pdf', '2018-07-06 14:46:23'),
(36, 1, 'Windows', 'Instalando e configurando o DHCP no Windows Server 2008', 'INSTALANDO E CONFIGURANDO O DHCP NO WIN2008 SERVER', 'pdf', '2018-07-06 14:49:39'),
(37, 1, 'Linux', 'Pen-test e auditoria no BackTrack ', 'backtrack linux - auditoria e teste de invasÃ£o em', 'pdf', '2018-07-06 17:11:46'),
(38, 1, 'Banco de Dados', 'Dump do BD Imobiliaria no MySql', 'IMOBILIARIA.mwb', 'mwb', '2018-07-06 17:19:39'),
(39, 1, 'Banco de Dados', 'NormalizaÃ§Ã£o 3FN, 2FN e 1FN no Banco de Dados', 'Normalizacao.pdf', 'pdf', '2018-07-06 17:26:29'),
(41, 1, 'Banco de Dados', 'Mini mundo para Banco de Dados', 'Banco de Dados - ExercÃ­cios de MER-2012-001.pdf', 'pdf', '2018-07-06 17:37:14'),
(42, 1, 'Banco de Dados', 'ExercÃ­cios de query para Banco de Dados', 'exercicio-sql-com-uma-tabela.docx', 'docx', '2018-07-06 17:39:07'),
(43, 1, 'Banco de Dados', 'Dump do BD trabalho', 'trabalho.sql', 'sql', '2018-07-06 17:41:24'),
(44, 1, 'desenvolvimento', 'Tabela de cÃ³digos para JavaScript', '_KeyCode.pdf', 'pdf', '2018-07-06 18:31:58'),
(45, 1, 'desenvolvimento', 'IntroduÃ§Ã£o ao JavaScript', 'Aula 1.ppt', 'ppt', '2018-07-06 18:35:03'),
(46, 1, 'desenvolvimento', 'Segunda aula em JavaScript', 'Aula 2.pdf', 'pdf', '2018-07-06 18:36:32'),
(47, 1, 'desenvolvimento', 'Terceira aula em JavaScript', 'Aula 3.pdf', 'pdf', '2018-07-06 18:38:05'),
(48, 1, 'pdf', 'Teclas de atalho em Excel', 'Teclas-de-Atalho-Excel.pdf', 'pdf', '2018-07-06 18:44:42'),
(49, 1, 'pdf', 'configurando Virtual Box', 'apostila de virtual box.pdf', 'pdf', '2018-07-06 18:52:00'),
(50, 1, 'outros', 'Rufus Portable, para criar pen-drive bootavel', 'rufus-2.11.exe', 'exe', '2018-07-06 18:55:04'),
(51, 1, 'outros', 'Framework de CSS (estilizaÃ§Ã£o de sites)', 'bootstrap-4.0.0.zip', 'zip', '2018-07-06 19:02:25'),
(52, 1, 'outros', 'Winrar para arquitetura x64', 'WinRAR_(64bit)_v5.31.exe', 'exe', '2018-07-06 19:18:12'),
(53, 1, 'Linux', 'Comandos para criar usuarios e editar permissÃµes', 'COMANDOS DE EDITAR CONTAS E PERMISSOES (1).txt', 'txt', '2018-07-06 19:24:39'),
(54, 1, 'Linux', 'Diversos comandos em linux', 'Comandos LINUX.txt', 'txt', '2018-07-06 19:25:47'),
(55, 1, 'redes', 'ConfiguraÃ§Ã£o DHCP no IOS(Roteador Cisco)', 'DHCP.txt', 'txt', '2018-07-06 19:27:45'),
(56, 1, 'redes', 'ConfiguraÃ§Ã£o DHCP na versÃ£o IPv6 no IOS(Cisco)', 'DHCPv6.txt', 'txt', '2018-07-06 19:28:42'),
(57, 1, 'redes', 'Encapsulamento HDLC e PPP no IOS(CISCO)', 'HDLC e PPP.txt', 'txt', '2018-07-06 19:30:19'),
(58, 1, 'redes', 'ConfiguraÃ§Ã£o de IPv6 no IOS(CISCO)', 'IPv6.txt', 'txt', '2018-07-06 19:32:02'),
(59, 1, 'desenvolvimento', 'IntroduÃ§Ã£o a JAVA', 'Java - Apostila BÃ¡sica.pdf', 'pdf', '2018-07-06 19:35:11'),
(60, 1, 'Linux', 'ConfiguraÃ§Ã£o DNS no linux', 'Linux (DNS).txt', 'txt', '2018-07-06 19:35:58'),
(61, 1, 'Linux', 'ConfiguraÃ§Ã£o NTP no linux', 'Linux (NTP).txt', 'txt', '2018-07-06 19:36:22'),
(62, 1, 'Linux', 'ConfiguraÃ§Ã£o SSH no linux', 'Linux (SSH).txt', 'txt', '2018-07-06 19:36:50'),
(63, 1, 'redes', 'Protocolo NAT no IOS (CISCO)', 'NAT.txt', 'txt', '2018-07-06 19:39:26'),
(64, 1, 'redes', 'ConfiguraÃ§Ã£o protocolo NAT2 no IOS(CISCO)', 'NAT2.txt', 'txt', '2018-07-06 19:40:04'),
(65, 1, 'desenvolvimento', 'IntroduÃ§Ã£o ao PHP', 'PHP com MYSQL - AULA01.pptx', 'pptx', '2018-07-06 19:40:50'),
(66, 1, 'algoritmo', 'Calculadora no visualG', 'CALCULADOR.ALG', 'alg', '2018-07-06 19:48:10'),
(67, 1, 'algoritmo', 'Calculador no visualG', 'CALCULADORA.alg', 'alg', '2018-07-06 19:48:25'),
(68, 1, 'algoritmo', 'CardÃ¡pio no visualG', 'CARDÃ¡PIO.ALG', 'alg', '2018-07-06 19:48:56'),
(69, 1, 'algoritmo', 'Categoria do Atleta no visualG', 'CATEGORIA DO ATLETA.ALG', 'alg', '2018-07-06 19:49:15'),
(70, 1, 'algoritmo', 'Desconto no plano de saÃºde no visualG', 'DESC PLANO DE SAUDE.ALG', 'alg', '2018-07-06 19:49:41'),
(71, 1, 'algoritmo', 'Desvio de soma no visualG', 'DESVIO DE SOMA.ALG', 'alg', '2018-07-06 19:50:17'),
(72, 1, 'algoritmo', 'Advinha o animal no visualG', 'ESCOLHA DOS ANIMAIS.ALG', 'alg', '2018-07-06 19:51:38'),
(73, 1, 'algoritmo', 'Desenvolve a mÃ©dia das notas dos alunos no visualG', 'MÃ©DIA ESCOLAR (se).alg', 'alg', '2018-07-06 19:52:47'),
(74, 1, 'algoritmo', 'Desenvolve a mÃ©dia dos alunos no visualG', 'MÃ©DIA ESCOLAR com encadeamento.alg', 'alg', '2018-07-06 19:53:11'),
(75, 1, 'algoritmo', 'MÃ©dia escolar com trÃªs notas no visualG', 'MÃ©DIA ESCOLAR(3 NOTAS).ALG', 'alg', '2018-07-06 19:54:24'),
(76, 1, 'algoritmo', 'Escolhe o mÃªs referente ao nÃºmero no visualG', 'MÃªs_escolhido.alg', 'alg', '2018-07-06 19:55:10'),
(77, 1, 'algoritmo', 'Calcula o peso ideal no visualG', 'Peso ideal.alg', 'alg', '2018-07-06 19:56:24'),
(78, 1, 'algoritmo', 'Verifica qual Ã© o maior e ordena os valores no visualG', 'QUAL Ã© O MAIOR DOS 3.ALG', 'alg', '2018-07-06 19:57:34'),
(79, 1, 'algoritmo', 'AtravÃ©s das medidas Ã© dado o nome do triÃ¢ngulo no visualG', 'QUAL Ã© O TRIANGULO                               ', 'alg', '2018-07-06 19:59:18'),
(80, 1, 'algoritmo', 'Calcula o reajuste salarial no visualG', 'REAJUSTE SALARIAL.alg', 'alg', '2018-07-06 20:00:27'),
(81, 1, 'algoritmo', 'Verifica o nÃºmero de filhos e realiza o reajuste no salÃ¡rio no visualG', 'SALÃ¡RIO FAMÃ­LIA.ALG', 'alg', '2018-07-06 20:02:54'),
(82, 1, 'algoritmo', 'Calcula uma soma simples no visualG', 'SOMA.ALG', 'alg', '2018-07-06 20:03:22'),
(83, 1, 'algoritmo', 'Calcula a idade baseado no nascimento da pessoa no visualG', 'SUA_IDADE.ALG', 'alg', '2018-07-06 20:04:25'),
(84, 1, 'algoritmo', 'IntroduÃ§Ã£o ao visualG', 'visualg_apostila.pdf', 'pdf', '2018-07-06 20:04:59'),
(85, 1, 'algoritmo', 'IntroduÃ§Ã£o ao visualG', 'Visualg2_manual.pdf', 'pdf', '2018-07-06 20:05:17'),
(86, 1, 'algoritmo', 'Jogo de resposta no visualG', 'TRABALHO(SHOW DO MILHÃ£O).ALG', 'alg', '2018-07-06 20:07:15'),
(87, 1, 'algoritmo', 'MÃ©dia do aluno com estrutura Enquanto no visualG', 'ENQUANTO-NOTA-ALUNO.ALG', 'alg', '2018-07-06 20:10:32'),
(88, 1, 'algoritmo', 'Nota do aluno no visualG', 'ENQUANTO-NOTA-ALUNO-V2.ALG', 'alg', '2018-07-06 20:11:32'),
(89, 1, 'algoritmo', 'Nota do aluno v3 no visualG', 'ENQUANTO-NOTA-ALUNO-V3_INFINITO.alg', 'alg', '2018-07-06 20:12:51'),
(90, 1, 'algoritmo', 'Cria um placar dos generos mÃºsicais ', 'Genero Musical.alg', 'alg', '2018-07-06 20:15:38'),
(91, 1, 'algoritmo', 'FunÃ§Ãµes matemÃ¡ticas no VisualG', 'FUNÃ§AO.ALG', 'alg', '2018-07-06 20:18:52'),
(92, 1, 'algoritmo', 'Mostra o maior e o menor numero que estÃ¡ no vetor no VisualG', 'maior, menor com vetor.alg', 'alg', '2018-07-06 20:20:21'),
(93, 1, 'UML', 'IntrouduÃ§Ã£o ao UML', 'UML_SENAC.pdf', 'pdf', '2018-07-06 20:28:39'),
(94, 1, 'UML', 'Caso de uso de sistema de locaÃ§Ã£o em StarUML', 'Sistema Locacao -caso de uso (para web).mdj', 'mdj', '2018-07-06 22:13:33'),
(95, 1, 'UML', 'Caso de uso de Hospital em StarUML', 'Hospital.mdj', 'mdj', '2018-07-06 22:16:06'),
(96, 1, 'UML', 'Caso de uso de escola em StarUML', 'Informatica.mdj', 'mdj', '2018-07-06 22:17:45'),
(97, 1, 'UML', 'Caso de uso do clube de danÃ§a em StarUML', 'clube de danca.mdj', 'mdj', '2018-07-06 22:21:06'),
(98, 1, 'UML', 'Caso de uso de um banco em StarUML', 'Banco.mdj', 'mdj', '2018-07-06 22:22:00'),
(99, 1, 'UML', 'Diagrama de Classe Oficina em StarUML', 'caso02-ClassOficina2.jpg', 'jpg', '2018-07-06 22:24:40'),
(100, 1, 'UML', 'Diagrama de classe Cinema em StarUML', 'filme.jpg', 'jpg', '2018-07-06 22:25:14'),
(101, 1, 'Linux', 'ConfiguraÃ§Ã£o SAMBA em Linux', 'Samba.pdf', 'pdf', '2018-07-07 00:07:10'),
(102, 1, 'Linux', 'Ultilizando wine no linux', 'Wine, preciso dele _.pdf', 'pdf', '2018-07-07 00:12:58'),
(103, 1, 'Banco de Dados', 'Comandos Oracle database (sql)', 'Comandos SQL em Oracle.pdf', 'pdf', '2018-07-07 00:16:52'),
(104, 1, 'Banco de Dados', 'IntroduÃ§Ã£o ao Oracle Database', 'Oracle.pdf', 'pdf', '2018-07-07 00:19:46'),
(105, 1, 'Banco de Dados', 'IntroduÃ§Ã£o a SQL Server (Microsoft)', 'Apostila SQL Server.pdf', 'pdf', '2018-07-07 00:22:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ideia`
--

CREATE TABLE `ideia` (
  `idIdeia` int(11) NOT NULL,
  `email` varchar(70) NOT NULL,
  `ideia` varchar(400) NOT NULL
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
(83, 1, 'Seja bem-vindo ao chat de troca de conhecimento.', '2018-07-01 00:00:00', 0);

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
(1, 'Douglas', 'Teixeira', 'dowglasa7x@gmail.com', 'daff4b58fdd13a489a6cf9f447cd7e34', '#000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`idArchive`);

--
-- Indexes for table `ideia`
--
ALTER TABLE `ideia`
  ADD PRIMARY KEY (`idIdeia`);

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
  MODIFY `idArchive` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `ideia`
--
ALTER TABLE `ideia`
  MODIFY `idIdeia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `idMensagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
