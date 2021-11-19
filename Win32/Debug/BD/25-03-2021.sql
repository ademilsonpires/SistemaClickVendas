-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: pdv
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_abertura` date NOT NULL,
  `hora_abertura` time NOT NULL,
  `valor_abertura` decimal(10,2) NOT NULL,
  `funcionario_abertura` varchar(25) NOT NULL,
  `data_fechamento` date DEFAULT NULL,
  `hora_fechamento` time DEFAULT NULL,
  `valor_fechamento` decimal(10,2) DEFAULT NULL,
  `valor_vendido` decimal(10,2) DEFAULT NULL,
  `valor_quebra` decimal(10,2) DEFAULT NULL,
  `funcionario_fechamento` varchar(25) DEFAULT NULL,
  `num_caixa` int(11) NOT NULL,
  `operador` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` VALUES (1,'2021-03-25','22:21:13',100.00,'',NULL,NULL,NULL,NULL,NULL,NULL,1,'Administrador','Aberto'),(2,'2021-03-25','22:22:40',130.00,'',NULL,NULL,NULL,NULL,NULL,NULL,2,'Administrador','Aberto'),(3,'2021-03-25','22:24:04',122.00,'',NULL,NULL,NULL,NULL,NULL,NULL,3,'caixa','Aberto');
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `debito` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracoes`
--

DROP TABLE IF EXISTS `configuracoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(10) NOT NULL,
  `config` varchar(10) NOT NULL,
  `valor` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracoes`
--

LOCK TABLES `configuracoes` WRITE;
/*!40000 ALTER TABLE `configuracoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_notas`
--

DROP TABLE IF EXISTS `detalhes_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhes_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nota` int(11) NOT NULL,
  `produto` varchar(25) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_notas`
--

LOCK TABLES `detalhes_notas` WRITE;
/*!40000 ALTER TABLE `detalhes_notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalhes_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_vendas`
--

DROP TABLE IF EXISTS `detalhes_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhes_vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  `produto` varchar(25) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_vendas`
--

LOCK TABLES `detalhes_vendas` WRITE;
/*!40000 ALTER TABLE `detalhes_vendas` DISABLE KEYS */;
INSERT INTO `detalhes_vendas` VALUES (1,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(2,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(3,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(4,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(5,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(6,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(7,1,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(8,2,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(9,2,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(10,2,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(11,2,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(12,2,'teste de rede',13.22,1.00,13.22,1,'Administrador','2021-03-25'),(13,3,'teste de rede',13.22,1.00,13.22,1,'caixa','2021-03-25'),(14,3,'teste de rede',13.22,1.00,13.22,1,'caixa','2021-03-25'),(15,3,'teste de rede',13.22,1.00,13.22,1,'caixa','2021-03-25'),(16,3,'teste de rede',13.22,1.00,13.22,1,'caixa','2021-03-25');
/*!40000 ALTER TABLE `detalhes_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(30) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cnpj` varchar(15) NOT NULL,
  `ie` varchar(15) NOT NULL,
  `logotipo` longblob DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (2,'frigorifico da djÃ©','avenida jose sarney','(98)99145-6623','36.366.290/0001','45215689','C:\\SistemaClickVendas\\Win32\\Debug\\img\\sem-foto.jpg','dje@gmail.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada_produtos`
--

DROP TABLE IF EXISTS `entrada_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrada_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(25) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada_produtos`
--

LOCK TABLES `entrada_produtos` WRITE;
/*!40000 ALTER TABLE `entrada_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrada_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `produto` varchar(25) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cargo` varchar(25) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos`
--

DROP TABLE IF EXISTS `gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(25) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
INSERT INTO `gastos` VALUES (1,'energia',100.00,'Administrador','2021-03-25');
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacoes`
--

DROP TABLE IF EXISTS `movimentacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  `movimento` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `id_movimento` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacoes`
--

LOCK TABLES `movimentacoes` WRITE;
/*!40000 ALTER TABLE `movimentacoes` DISABLE KEYS */;
INSERT INTO `movimentacoes` VALUES (1,'Entrada','Venda',92.54,'Administrador','2021-03-25',1),(2,'Entrada','Venda',66.10,'Administrador','2021-03-25',2),(3,'Entrada','Venda',52.88,'caixa','2021-03-25',3),(4,'SaÃ­da','Gasto',100.00,'Administrador','2021-03-25',1);
/*!40000 ALTER TABLE `movimentacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notadecompra`
--

DROP TABLE IF EXISTS `notadecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notadecompra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeronota` varchar(50) NOT NULL,
  `fornecedor` varchar(15) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `funcionario` varchar(30) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notadecompra`
--

LOCK TABLES `notadecompra` WRITE;
/*!40000 ALTER TABLE `notadecompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `notadecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `pro_pdv`
--

DROP TABLE IF EXISTS `pro_pdv`;
/*!50001 DROP VIEW IF EXISTS `pro_pdv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pro_pdv` (
  `codigo` tinyint NOT NULL,
  `data` tinyint NOT NULL,
  `valor` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `nome` tinyint NOT NULL,
  `descricao` tinyint NOT NULL,
  `estoque` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(35) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `valorcusto` decimal(10,2) NOT NULL,
  `estoque` decimal(10,2) DEFAULT 0.00,
  `data` date DEFAULT NULL,
  `imagem` longblob DEFAULT NULL,
  `ultima_compra` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'1111111111112','teste de rede','1212',13.22,1.98,-16.00,'2021-03-25','ÿØÿá\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\0<\0\0ÿáohttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:53A51B95E5ADE711AE30F62E530C5BA2\" xmpMM:DocumentID=\"xmp.did:41BFFA89CBA911E792C3DE5609E3EB96\" xmpMM:InstanceID=\"xmp.iid:41BFFA88CBA911E792C3DE5609E3EB96\" xmp:CreatorTool=\"Adobe Photoshop CS6 (Windows)\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:B08E769ED5CAE711BF3FADD57E2AF65C\" stRef:documentID=\"xmp.did:53A51B95E5ADE711AE30F62E530C5BA2\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ÿî\0Adobe\0dÀ\0\0\0ÿÛ\0„\0		\n\n\n\n\r\r\Z\ZÿÀ\0€€\0ÿÄ\0Š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0!1AQa\"q‘±Ñ2¡ÁBRr’#sTb‚²3S“45á¢C$ğÂÒc&ñDât%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0ú<bHÄ‘ˆÔ@É’1ÒÔ@µ-DQÔ@´€¥)DQ’”@¤€¥) \Zˆ@\Z@4€i\0è €>\0( \0( \0(@\n\0P€P€*\0P@ˆ\n€*\0œ@N *48€š\\@–€—% %Äq\\@–€‡!Ä”@‡!Äq¢J cq%1Ê c’ˆc2F dQâ€É‘DŠ Zˆ¢¨j Z@R@Zˆ¢¤(IJ R@4€ª\0ÒğTĞ¢H@\0t\0 €Ğ€\0 €\0 \0T\0 \0( \0T\0 \n€*\0šPĞ	 \'„@@K@&€—% %Ä	hq@–€‡!Äq@‰Dm c”@ÆĞ$9Drˆ#2Eq@dŒ@È¢E-DŠ Zˆ¢¤(j Zˆ¢$$$$H\nQ¤H\nH€:\0è \0t\0 €\0 €\0 \0(@\n\0P@\n\0P@\n\0¨ \0TPĞ\n€K@*\0šZ4´´¸. K@Cˆ(\r- Cˆâ7! \"Q¢9D’¢HÄH‘ˆ@È‘DŒ@È¢$¨j Z@R@Z@Rˆ\r ) ) \Z@:I\0è@\0tĞ€:\0è@\n\0è@\n\0è \0(@\n\0P€*\0¨@\0( \0TP@% @K@*\0šZZZ\\@–€†€–€‡!Äh	qˆ(Ä”@‰ 1J c’$€´€É‘D‰j dŠâ€È¢¤¨j Z@R@Z@R@R@R@R@R@4€¤€ª\0èH@\0tĞ€:\0è \0t\0 \0t\0 \0(@\n\0P€*\0P€*\0P@\0T\0 \n€*\0¨ \n€K@\'% @K@K@K@K@K@CˆĞâI\r D¢9 1¸@c’¢9 .1,bH .(‘ˆ#- - .1\"ˆ\r *€4€¤€i\0ÒĞ@\0tĞ@\n\0è@\0(@\n\0è@\n\0P€P€\0 \n€P€*\0šP@\0M\0š4h	h	hĞĞĞĞĞĞĞĞ(ˆĞ(Ä’(HRˆb€¸ 2E’(‘ˆ¢¤¨‘ - ) -D\nHH\nH\nH\r ) \Z@:\0è €U\0( €Ğ€Ğ€\0 \0(@\n\0P€\0 \n€\0 \n€P@€Th \n€&€M-\0šZZ4´´4¸\r-@c’\Z%1Éˆä€Ç$9 2Eq@dŠ$P@´€¸Ä‘@Z@Z@Rˆ\r ) \Z@:\0Ò’Ğ@\n\0è \0t\0 €\0 €\0\0\0\0\0\0\0\0P€P€*\0PĞ\n€4 @\0M\0šh ĞĞĞĞĞĞâ4´J chhqˆÚ$Å’1â€ÉD€µ2EiI‘ ) ) ) - ) ) \Z@R@4€ª\0Ò¤$ \0tĞ@\n\0è@\0\0t\0 \0\0\0\0\0\0\0\0\0(@\0\n€P€*\0¨@\0TZ4P	h	hĞĞĞĞĞĞĞĞĞ(Hhrˆä€†€Ç$Å’(‘@Z@Z@dŠÒÒÔ@´€¤€´€¤€¤€¤€¤€¤€i\0Ò’¤H@\0tĞ@\0t\0\0\0Ğ€\0 \0(@\n\0P€\0 \0\0€*\0\0¨@\0TP@@&€M-\0šZ4´´´´4´444IHh’ä€¸ 2E‘ - 2F Z@Z@Zˆ\nH€:\0è €€è\0\0 \0\0`\0\0\'(­î€av\r¿_\"Ü|3¤2ÖôˆïË·å¯˜|Ã¢­Ÿk‡»èPèŸ{‡»èã®hòİ—oÊhj=L›R¯Tãé<e	*ÆI®ÇP\0\0€\0 \0\n\0€T\0 \n€*\0šPĞĞ	 % @K@K@K@K@K@C@K@C@C@C@Dä€†€Ç$9DŠ$P\"€ÈÅiIiIIIIII\0Ò’¤ \r €:\0Àt\0\0Ğ\0\0öäÉÕtìZû|ˆE¯ƒZ¿\"Ú«#œpàÚ±jw)÷»Wî­¿Íúœê­Bİ•ĞèäıĞ<µ½Z÷¯•4º¢øWùhwnÍÖs”Ûé“oÎÑu\0P€\0\0¢ê@8ÎpuŒœiÔÚóê³«ê–W•qv9q/óT}mÕ­ì¹Áy~Thÿ\0ÊËœ¬J‹\"Ä úe¤¼›LmsJÉ¢·‘\'ğgİ—‘ĞruÚ€`\0*\0€\0(P@\0TPĞ	 % \0–€–€–€–€–€–€†€–€†€‰ ! 1É \"Hr@\\P\"€È@\Z@R@R@:\0è €0\0\0\0t€lëÏ•‰‹<‹±´—D×âŞ‹7œmÆ±Ã´æş=Îì~jÚ/[Ôòê®ß’ƒøîÇÜÃMµéëĞ€\0\0\0¨PP@\0\0(@\0\Z®ğ=Xº¦£Šş‚ü¢¾+u‘»Ãç)¦–eš®›–÷üÖÿ\0TÀÌqïFréƒÙ%â`z@\0\0@*\0¨ 	 @K@K@*-----\r-\r\r@Dä€ÆĞ$$Å–(HHHHH\nHH\nH\nH\nH\nH@\Z@:\0À`\0:\0À(“;UÂÁEÅÑ¶oÁ3¨sn]êÃ?g·ñŞÙ¿y£¹råÙ¹Ü“œŞùIÕû J@0\02YÇ¿~\\6mÊëü„ß˜\r?+j÷Rr„l§ñå·ÈªÂÏ%7G{*ª÷ØÛ\\¥Åwåvãé¬©æ@zaË\Z,úê_*R~ø£¡iõq-üÚùÀ¿üN›Ñ‹kæGĞÿ\0Äé½8¶¾d}\0D´M&[ñm|Ô€Ã>ZÑ¥ÿ\0ÖŒ~K’÷Àó]äı*^£¹möJ¾zã½ÉQßg)§Õ8§î¦ƒ#”õ[uö|’ø²£ò:«ÈÂÌÇı}‰Ûèï-]Àa\0\0 \\£%$Ú’ÜÖğ6øÑ¨c5Ïíº¤é%ùŞ:};\\ÀÏ¤mO†ïM©ì—‹¯ÄÀ\0@\0@&€M\0€M\0šZZ4´´´´4´4´6€‰ \"HR@C@TP\"€È\"€´€¤€´€¤€´€¤€¤€¤€iII\0ÒĞ\nĞ@\0\0y1í;·¦­ÛùIĞ_SæÛ·+k{8nwä»ÏÁ€9éÎw&çrNS{\\¤êØ\n›@\0»V®]š·js{£Vë”µÔ–CXğ}½:xÄó•t«sƒ¿5ÓqÕWä­€m­Ú·n*0ŠŒVèÅQ{€UP\0\0\0\0\0\0\0\0\0D”#%F“Oz{@ÖeòŞ•“Vìû9¿‡mğ¿\"Ø7“òíÖX—èüIweåÜ##\Z|íÊÔú¤©_\0[SªŞ·5±¼Òù«/†ŞWû‹gú‰xz@êğ³ñsm{\\{Šqé[šğ®€=\0 \n\0€T\0 \n€K@ @K@&€–´´´4´4´9 ! ! 1ÉHŠ\"@\\P’ÒÒ\rIIH€iI\0Ài\0\0è\0Ø€ÔêüÁ‹€¸ı.Oì“İòŸ@~n¡—wÚdMÉü­‘ç \0q±rrn{<{r¹7ÑPÉÍÒy×)ÓìmûòôÑbàââÃƒÜmÇ¦‹kğ°=\0\0\0\0\0\0\0\0 \0(@\0\0\0\0\0\01_Æ±~İèFäøÉUÏêfuı”¿e*¸xºPÖfŸ™…>›NİwK|_‚K`p\n“\'#\Zê½bã·q|%æks¬Ñù¢ÆO\rœªY¾ö)|	?x\röÀ\0\0@\0šZ4h	h	h	hĞĞĞĞĞĞĞ$9 ! 1ÉQ@dHH‰iIiiIIH\nH\nH\nH€`P\0\r šŒ\\›¢[[{€åµ®irâÇÓå³tò=èz@æ¶¶ÛumÕ·ÒúÀ\0qŒ§%§)KbŠÚØ—ÊW®¥w9û(oö1õŸ…ü:œl<lkjİ‹jÜ:’ó˜\0\0@\0\0\0\0\0\0\0\0\0\0\0( \0\0\0\0ïX³zÜ­İ‚œ%ëFJ©ù@æµ>PRr»§¾½Ø“ØşLº<`sWì^±uÚ½näwÆJŒ`\r»Ñy–ö\'\rŒ¶îã|ï”=(ÆÍëW­Æå©)Û’¬d¶¦\0¨\0` ÀM\0˜ĞĞÀ–€–€–€†€†€–€†€ÆĞĞä€´€´€¸ 2$$¤¤$¤ ) ) \Z’ ) \r\0\0Àh¿~Í›S¹vJŠ¬¤÷$­ë÷³äìYnŞ\"èİ)ö¾ÎÀ5\0\0{t½\'/Q¹Ãf4´½{Ò¯},ÏKĞğ´øÖÜxï?Zü©ÄüKÀÅ \0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n€\0\0&€òj\Z^u¾ğ«^¬ÖÉGÀÀãu}/Onkéq›Ùu-«å.€5`\0{ôg\'Nº¸{øíı%¾Øõ0;Œ,ìlÌxŞ±>8KÊŸSí;@ @ @K@&€@C@&´4´44´9 \"HmQ@dHH@Z@Z@Z@R@R@R’€i\0Ò€h\0 ò2-cÙ•Û²P·YIÃë:ÕíFï\n¬1¢şß_åH\rh\0½—.æğßÈ­¼]é|)ø;;@ì¬cÙ±j6¬Á[·\r‘‚Ü€Ê\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n€\0\0L¡EÆI4ö4ö¦\'­ò»¶¥“€«®æ?Jí‡ l\0^™©äéùÖÎØ?ÖÛ®ÉGÓÚw§çãçcÆõ‰qAïOz}LC@*\0€\Z,ÀM--,	h	h	`C@C@C@C@C@c’’$P\rH€¤@\04€i7nÛµrä”aYIìI 8moZ»¨Şá‹qÄƒú8tÉüi¬\0¥åşZãáËÎ‹àØíX}=²ôÖ$’¢T€\0è\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P{_å¸äñåbEG!m½Ê~©ÈI4ÜdškcOz}5ëÒõ<;%]·¶eÛ}^;Ü,Ëxñ¿f\\Vä«^§ÔûP˜\n€ €–`&°@C@KZZZ\Z\Z\Z$€ÆĞ¤$¤@Z@P\rH€`0\Z€7@8ÎcÖşÙuâãËı­·ŞKşT\0£—yv®9¹§Â³a¯$¤¼Àu(@\0\0\0\0\0\0\0\0\0t\0 \0(@\n\0P€*\0\0\0\0\0\0\0\0\0\0¨\0Ÿ/3Ì¯_’…¸ô¾—Ô»@àµløçfÏ\"6•¨½Š+{í—h \06:&­sNÉ¬«,ké£ÿ\02í@wv®Û»n7-µ(MV2[š`S0ÀM,´4`C@K@C@C@K@C@TPÄ@Z@R@Z@R’€iI\0À`4¶’ì›æiÚ‹ÀÇ—ÒÉ}<“õbş…Ê%EE¸\0–´\'yÇ7&?DŸĞÛkÖö×P\0\0\0\0\0\0\0€:\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0\0‹SÔñtûÖô·×‚Ö“ê@pº©•¨Şö—ŸWêí\'İŠôöã\0\0\0Ë\ZÏÙî¬+òúè¤şŸG× \0\0€M-\0˜À–€–´4°! \"H’$€ihHˆ€¤€¤ )\0Ğ€h\0\n¯ÖµHiøR»±Ş—vÌL¿À\näç;’¹7Å9¶å\'½¶·åı\ZYùÒêkÓï¿Œş*÷ÀîaÂ*1TKbK¡ (€\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0\rn±­ãiÖ¶ı%ù~®Ò{|/©Ãffäæ_•ì‰qIî[’_=H\0 €=÷ôMBÆsn[¥¶öÃáE=Òh\0ÿ\0€;^ZÖ>ÙŒìİîl¤¤úeÊ^7@ $€˜ÀL	`KZXĞÀ†€†€†€†€¨ihH\nHH\n@R@R\r )\0À`4@)Î0‹”#VßB@p:Î§,üÙ\\MûwlÅüU½şp\0=:~ÜÜ¸cÚß\'Ş—ÅŠŞÀú%œ\\xcÙ\r¸*.Ş¶ü gĞ\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0€I®ó\r¬»)s-ôoPí— 2õë·®ÊíÙ9Ü›¬¤÷\0\0Œ§8Æ)ÊrtŒVÖßR@uÚ-Çƒ\'1)_[aoz‡‡­¿¹nƒ„×d©(½©¦­éONÌp[lN²³.Î¯\Zà3áeİÃÊ·“oÖ¶ö®¸½éô,L«YXöïÚu·q\'@X	€€@&°À–€–°! % ! \"H’ - - -H@R€¤@P\r\0À`09ŞlÔİ«+Ô©rò­ŞÈ.\0Ç-i?cÄWnÆ™×ë¾1èˆ \0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›@sz÷2«<X¸RR¼¶\\¼¶¨ö.Ğ9&å&å&Ü›«okoµ€\0xö/d^›0s¹\'Eÿ\0\0í´>_³ví.eµ¶}]Qô· \0\rgM†¡…;/eÅŞµ>©/H>¹nvç(MpÎ-ÆIô5½ t<§©»wŞÇÜ¹Ş³Ù.•ã®­@@&` %€˜À–€–°!,’$4@ZÒĞ€´ )@4 \Z€Ğ€Ç~ô,ÙÙºBr“ì[@ùŞn]Ì¼«™3{n:¥Õ„\07µ¦}³;ÚMVÅŠJIôËàÄå\0Ğ\0\0\0\0\0\0\0\0\0\0\0\0rKÒ<‹}È/Ú±¿kœ€>ÕûX|äö¬oÚÃç µc~Ö9\0}«ö°ùÈíXßµ‡Î@iÇı¬>r”Óİµu (\0\0\0\0)(¦Û¢[Û’×¹™ŞãÅÁ•-n¹}o—CQìíœ{@T\0>Nmõc<S{[~¬W[`w:F§Z¤;÷ä¾’óŞûRb\0`*Ésv—Áv9ö×vå#y%ğº$6Bs„ã8:N\rJ/©­À}KÎ†n¼ˆï’ï®©-è[@@&`H	,	`HÀ–0!-h@R€¤ \Z€h€`09ÎnÔ8,CmîõÎ¾î^6&I¶’Uob]uè:.œ°0-Ù§Ò>õ××\'µù7°€\0\0\0\0 \0\0\0\0\0\0\0]O:Ö\rì»¾¥˜¹Qt½ÉxØ)ÔõİSRºîdŞ’‹õlEµ®¤—¾¿~ğ\0\0\0\0\0\0\0=š~Ås\"å©-Ü2ÙãæÔ9_[z¾œ¯Í(ä[nİø­ÜKmW…¸\0\0/^µfÜ®]š…¸ªÊObH/\\æ¹®V,V›ŸÆŸkê]€i@\0\0öézNV¡‚Òá·Ö^~¬|]/°ãNÓq°,+6#N™MúÒ}më\0\0\0ƒ3\ZŞN5Ë=K‘q}¾ >s•s\"æ=ÅIÛ—÷ŸŒ@t£¨;YSÃ“î^ï[¯DÖõã@uèÀLÀ@K0%,`KXÀ†I\0â -h\n@R@Z )H )\0œ’M½Ëk}€|ïTÍy™÷oüéÈ­ˆ(®UÓÖV¡í¦«k¿ùÿ\0Òn€\0\0\0\0\0``ÊÍÄÅ‡´É½0ø×$¢½Ğ5¯œyi:<øx”Ÿ¼ş²åŸ¿CæÏĞıeË?~‡ÍŸ úË–~ı›?@õ—,ıú6~€ë.Yûô>lı\0Ö\\³÷è|Ùú\0Ñó2iÚ4±°²£vìîAÊ	IwU[Ş(\0\0\0\0\0\0\0\0\0W\"ëx\Zló#}Y…Õ	B©ºÉU=ÉõÖYrÏß¡ógè\0ş²åŸ¿CæÏĞ7òôÛVòãrTmF1•]<@s\ZÆ·‘©\\£ú<hºÂÏ¿.¶¸\0\0\r†‰¥är\\Åvÿ\0X“\\muF;ü`wx¸¶1¬ÆÍˆ¨[Š¢Šóø@Ê\0\0\0\0` 9NrÓÔek:d¾÷….ë™ìŞ¹fô/[t¹)Eö­ }\"Ö¯ÃÕ»%ã3@@ XÀL`KXÀ‰ -h@R€¤ \ZUÌ™ŸfÒîpº\\»KpüíşDJ\0ŞòŞÙ4Ë|J—/}%Ï·/j\0\0\0\0¯×u[z^›w2k‰Ç»n\ZoÕ@|£??/?\"Y9wÛ­ºWr]Q]	æ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-‹/Ë†w­.„ÚÆ=»0á†ÚúÒé`d\0\0É—œ­ÖöÜëø k­Ş»ªõ¹ÊSª¹Ô«×P>—É¼Á=S\nVòZy˜ÔW%ñ¢ıY{Ìˆ\0\0\0\0Ë¨áÇ3î<¾Z‹ê–ôü |æp”\'(MRqmIv­€Ho\'æ;˜×1dë+/Šòeş t@ 0%€˜À–°%,`DĞ\rh\n@Z€¤ \Z€`4@08şpËö™¶ñ“îÙ—åOü\Z\0=ºFÛ5)X¹qOäÇkè‰SÀ \0\0\0\0\Z\0üIœ–Ÿ‡m>ìï7%à=ğ8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03ââÎûø°[çèkjÔ-AB\n‰oíÀ\0\0öeòç0<%zÅŠ©.)AKéRù,Zq”dã4Ôâé(º¦ŸS¨Oøy9G\\¹êÎÄª¼‹@}$€€\0\0\0Í8_gÔår*È\\j›«º@i€Úræ[ÆÕmUÒkj^=«İ»0\0€–`KXÀ–°!‘H@RĞ\rH\n@4HÚ[^à>s¨dı§:ııêäÛ]Š´^àp:~LÅÛ.KªÔ» :°\0\0\0\0\07ñ+øL­ŸèÁ\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0õbaJëSŸvßºÀÚEF1QŠJ+r[€`\08Bs’„\"å9:F+ko°ÃAå¨ãpäæ%<ğ†øÃÒÀßğ 8Ş~Ğ­Oÿ\0+f4½i¨äQzÑn‰¾ÔÀà€é¿¿Ÿ¿¨Ÿ }(\0\0\0\0\0CÍØ×NWÒïcÉKóe±ûÀq`8ÊP’”}h´ãáN¨£áäG#\ZÕèî¹ÏÊ€Î€€LÀ–°%,	`CÀqĞ€¤ -H\n@4 ‹YÈû>—“ul’ƒQ}²Ø¼à|õn\0è¿ˆ±´œxR’œ}¤¼3ÚÉ\0À\0\0\0h\0\07ñ+øL­ŸèÁ\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷aà¹RåÕÜø1ëğ±I%D\0\0œá¹MğÅol¿“ğğ§§ÚÔ ¸¯Şªr…µÂº€èÀ\0Ôó\\íÇ—sÜ÷;n+ÂÚKİäµ¨7á÷ó÷õóÄ¥\0\00\0\0\0	‡/9·lËj¹*æ’Œ£\'	o‹i®Õ°mÊ™×IŒ[ïY” üªó¹\0€L	`&°%,`K @´ -H\n@R€h€h‡œo8i¶í-÷n*®ÈªÇ’Å§vı«Kk¹8Å/ L‚J*+rØ¼@Z\0\0\0\0€\0Æş%	ƒõ³ı8 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\r&İÖ÷ 68x*4¹yV}êÚ\0\0]½nÔ¦èºKS‘“;ó¬\"½Xt :>Jæ[:|åƒ™>[²â·uú°›ØÓü—çèĞœg(ºÅíMmM\0JJ)¶è–÷ÔÏ¹Û™læÓNÃŸˆKŠıØî”£º)ô¤\"Mø}üııDüñé@\0\0 \0\0\0½À|÷]±ìu|˜¥DçÇ×\0:^K¿ô¹VÂŒn/uÕ\0˜	€˜	,	`KXÀ†°\"@Ğ€¤ )H€ \rHî“ç;ÕÈÆ³ÑJOÆéïÎ±åë^×YÅ]“›üÔØ@[€ \0\0\0\0\0üJşëgú p@ \0\0\0\0\0\0\0\0\03ááeæ^Vq,Êõ×ğb«OWŒ«Nü9Ë¹,ü•e=®Õ¥Å/À7¸ü‡ËÖ’ãµ;ò[İÉËoŠ<(óäŞ[kø(.Õ)¯ù€Öj\\‡¡FÔïBıÌ8ÅUÉÉNÅ- r¶0lØœš—µ’mBmSg]XÀ\0\0Ã‘“nÄ{ÛdıXª½~åéqMíè]À0\0=¸zÎ­…\\»–añ«uH—­êùàÉË»r1â¤_…*á\0¦ü>ş~ş¢~xô \0\0\0\0\0\0^æÎ6T5;wë–—–-¯0\Z6ü­wÙëãÑv2ƒòq{Àvëp\r,X	,	`CXÀ‰\0Ğ€´ -H\n@P\0À\0â9®ç±(üHEyvûàiÀŞò}¾-Rsßìí7åiÚ \0\0\0\r\0\0\0Æş%	ƒõ³ı8 \0\0\0\0\0\0\0\0Ş[å\\­^jõÆìàEÒW~Úßz@úN¥áiØñ±‰i[¶·Ñm“ë“é`z€\0óæçcáØ•ì‰(Áy[êHVÖr5+®½ÌxºÛµïË­¯\0\0Í•›+…w®ôG«Â®s”æå\'Y=ì	\0\0\0\0\0\0¦ü>ş~ş¢~xô \0\0\0\0\009nvµİÄ¹ÓYÅù–Ù£Üöz®$·},SüíøC\0  À–°!,	`C\0@Z€¤ )H€`P\0˜\'Ç­e>©(ù\"\Zğ:NI…r2§ÕÇÊÛ®@0\0\0\0\Z\0\0\0üJşëgú p@ \0\0\0\0\0\0\07<±ËóÖ3¸gXáÙ¤²&ºkº+ÂÕ,XµbÔmZŠ…¸%AlI.„€áÕ5lm>Ë¹uñM¯£´½i>ÏH6£©dçßw¯½‹e¸-Ñ]KÒ”\0gNà3æiz­\"zŒmÒÔZß^.ğéÔ4Ûn­Õ½ì\0\0\0\0\0\0\0Mø}üııDüñé@\0\0\0 \0\0\0Ÿç8WO³?‹u/,Xhq¥Á“f_ä’H¥v€\0€0%,	`KXÀ†\0€´ )H\n@R€\0 \ró­^\\Z®\\ºîËÎ«’£ÜË—åAy¨@0\0\0\0\0\0\0oâWğ˜?[?Ñ‚\0\0\0\0\0\0\0Òm¥Vö%ÖŞÅîõÎ^Ò!¦ivqÒú_^üºç-¯É¸\r˜\0\Z½k]±§[áıfL•aiyåÔ€áò²¯å_•ëós¹.„º’è\0ÚèS òÅ8r³ã·}»wÊŸ ’õ›wlÎÍÈ©[šq”^æÀ>=ªà\\Óõ,Œ9íöSj-ôÅí‹ù y\0\0\0\0\0\0\0\0é¿¿Ÿ¿¨Ÿ }(\0\0\0\0\0\0\0ÀÑó|k¤7Ókİ@q\08ºI>¦Ÿ‘ôØ:Û‹ëKÌ &`KX		`C\rH@RĞ€h\n@R€Ğ€ùÆ¥üÇ+ëgçÌYÉ?¨Êùqó0:t\0\0\0\0\0\0\0üJşëgú p@ \0\0\0\0\0\06ü§†²ùƒU…¹;²_!U{ }e\07@4Zï1ÛÃâÇÆjæWKßx{{\0ãn\\¹vä®\\“œäë)Kk`H\0Näãqsœ#ªÛê@v\Z-ÃG#-)åoŒ7Æ–ş€\0|óñCSÆÊJŞÓŒ¾U·è\0\0\0\0\0\0\07á÷ó÷õóÄ¥\0\0\0\0€\0\0\0\0ÒógòkŸ.¤`}6Ïêmü•æ€L`K0%,`KÀ€´ -H )\0Ğ\r\0ÀhœêŠš–Rÿ\0»?ÒÊYÉ?¨Ê_—î0:p\0\0\0\0\0\0üJşëgú p@ \0\0\0\0\0\0:ÃÈÅëw[Ş¬JŸ: }‰-às:÷3pqbàÊ³İrúÚ“éQôÊ¶Ûmíok{ö€\0—\ZşMèØ³;“İî·Ø€í´]ÆŸ9RæT—zçBìˆ`\0\08¿Ä¨/²àÏ¥\\šòÅz\0àÀ\0\0\0\0\0\0\0é¿¿Ÿ¿¨Ÿ }(\0\0\0À\0\0\0\ZNmtÑçòáú@pà0>™iRÌTW˜\n\0˜	,À–°!,`K\0@RĞ€´ (€¤ \róİn.:¾Zÿ\0¸Úñ¤ÀğÔrLöåÃä5î :°\0\0\0\0\0\0üJşëgú p@ \0\0\0\0\0\0:GÊ†>¿9(Âí»r{ÙÄ¼ÀoµŞe–G6œln¹wsŸdz\Zø \0\0œ\r?\':ú³b5\noÕŠëlçIÒ1´ë<×É~¶ëõ¤ı€{À\0\0\0á¿rx6Ûß¸×fÈ 8€\0\0\0\0\0\0\0:oÃïçïê\'çˆJ\0\0\00\0\0\0\04ã*iqÆ»q6¶«v®Iy]\0újTŠ]@\0&0%€€–°!,`K\0@RĞ€´ )\0Ğ€hôÁó48u¼ÊP—–(\rX%Î™×áñ­\'ä’ôØ­À0\0\0\0\0\0üJşëgú p@ \0\0\0\0\0*”ä£Y=È\r¦.l÷¥Ş¹JW«À¤\0\0~“£dê7©\nÆÌ_Ò]{—bë`w8\Z~6\r…fÄxb·¾™>¶Àô€\0\0\06Ê¹ÃRYÚíùAÖÖ?Ğ[¦îï­şfÀÒ\0\0\0\0\0\0\0Ó~?Q?<@úP\0\0\0	€\0\0\0=Às\\ë:bãCã\\oÈ¿ÄDFŸiŸvüÈ£ô\0\0˜À–`KXÀ–0%€ )h\n@Z\rH\n@0€ã9ÂÓ§n}--½±m¢qÊ·x5›k¢äer¾ğÒÜ\0\0\0€\0\0Æş%	ƒõ³ı8 \0\0\0\0jÕË³à‚«÷kmnÄ{»fıiz\0Ì\0\0ÛCĞ/jWnVÖ\"õ¥Ó*tGÒog\ZÔlÙŠ…¸*F(€\0\0\0\r7kñÓ4ùBÜ¿Şd\'uÕñ¦üp>]çé`\0\0\0\0\0\0\0\0tß‡ßÏßÔOÏ>”\0\0\0\0\0\0\0{€ä9Öírq­WÕ„¤ünğØ^µí5œUÑ9¿ÍMßt\0\0€@&°XÀ†°!,€´ )H\n@P€h\0À×9Ùú,[Éz²”ç*¯0¨­.÷°Ô±®ôFäkànøHà\0\0\0\0\0\07ñ+øL­ŸèÁ\0€\0\0\0Ërü¸a¹zÒ}\0m¬X…˜pÁx_K \0\0^³¥æê_gÉ½(í«Ú>®/xşÜ!(E(Æ;\"–Ä\0\0\0T§^æ-\'ëS¿%ôVïIöõG´—êZV£—<¬™q\\åÑ·F=ˆ(\0\0\0\0\0\0\0\07á÷ó÷õóÄ¥\0\0\0\0€\0\0\0RÜÍ½®³u-Öã{•÷ÀÔ¾äû<zÛŸ²¶éá“§˜Ç \0€0%,	`&0%`@RĞ€¤ )\0Ğ\n€ 5\\ÑcÚè÷ZU•§‹ó^ßqÂ€Ói¦·ª5á@}+\"9voÅÕ\\„eãkh€\0\0\0\0\0\0oâWğ˜?[?Ñ‚\0\0èÅÄçWİ¶·Ë¯±µ·nà¡H (\0 kòóë[v_ÊŸ_bÂ›M4ÚkjiíOÂQ¢óæv$ag:?k²¶+‹eÔ¼Ò±Óù§CÎKÙeÂ{í]ú9\'à•\0ÚÆq’¬Zk­m\0rIUì] x3uı#\n-äeÛƒ_IJ_65`rš¿â”ekK´âŞÏ´]_£HvFEü›Ò¿‘rWoOÖœİ[\0\0\0\0\0\0\0\0\07á÷ó÷õóÄ¥\0\0\0\0€\0\0\0Si&ŞÄ¶¶Í3oı£6ıïÚ\\”—‚»\0À]Év8q/ä=÷f£Ùé`t,\0€˜	,	`KXÀ–0 -H@R€`0\0€Ç•e^Ç¹eî¹AøÕ\0ù¬£(NP’¤¢Úkµ:\0€í9C/ÚiÎÃ}ëqüÙwğ\0\0\0\Z\0\0\0üJşëgú p@ \0=x˜2¸ÕË›-t.–Í(ÅR*‰n@0\0¤¢›“¢[Û[—í{–ß\r¾—ÒÀñ€\0\04š£H…ëÖÿ\0Wrpù2kÌÀsÈÈš¤ï\\’ê”äüìt\0\0\0\0\0\0\0\0\0\0\0\0¦ü>ş~ş¢~xô \0\0\0\0\0[¯åı›KÈšt”£ìãáÀ>}J\0ô\rìúV=¶©\'9.Ù÷½ğ=ì\0€€L	`KXÀ–°!€€´ -H\n@4\0Àh\n@\06ÌxŸgÕïQR7iv>=İXë”òİOÙ7HdEÃó–ØÜ€\0\0\0 \0\0oâWğ˜?[?Ñ‚ïÃÁªW/-Õ‡¾ÀØl\0\0n\\…¸9ÍÒ(\rVV\\ïºn¶·Gß`yÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0é¿¿Ÿ¿¨Ÿ }(\0\0À\0\0\0\0äùÓ.³±‰º·..×²>øÀŒg“›bÂUö“Iüì£Å$’[Ø€\0À@ %€˜À–0%`Ğ€´ )H\n@R \Z \rÎs–\'=¬¨­¶_ßäËwº$Ú»;W#rÛ¤àÔ¢ûS¨IÃÉV-¬ˆz·b¥à®ôp\0\0\0\0\0oâWğ˜?[?Ñ‚£n‰U½É²ÄÁVé;©9ôG¡ì\0\0ûÖí[â›ß±Eol\rNFEËÓ¬÷/U-È@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0tß‡ßÏßÔOÏ>”\0\0\0\0\0g%¶İM¶Î5<ÙfgŞÈ{§.çdVÅîå¡äì?i™w*K»f<ùRÿ\0\0:ğ	€˜	€˜À–,	`CX @´ )h\n@R\rH€Ğ|üHåb]Ç–ë‘kÇ½?(9œ\'nä­ÉRPn2¯Zt@ëy3?ŠÕÌ)½¶ûö¾L·¯(0\0\0\0\r\0\0È~#Y¹s	Â.T½$èºáş\0r˜˜P°¸%qôõv = \0\0aÉÊ…ˆíÛ7º\0jnŞ¹v|su—Gbì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éÿ\0\"Ş»9tBÄ«ã’H¤€\00\0\0\0\Z^jÏû6œíÁÒæGÑ¯“ğŸî¾åü²i–¢×Ò\\^Òç†_àÉ€€@ X	,	`KÀ†H-h@RĞ\rH\n@4€h\0ÍX.Æ¡íâ©o%q?–¶KË¼\r ;6xY–²cş›ï%Óë >fä.Z…ËoŠJQ}iíÀ\0\0\0`ysµ|+õùpÅz«áIõEtÃêÚÆN¥{Š}Ë1ıU•¹v¾Ğ<\0\0\0y²ó#f°‡zïWW„\rT¥)ÉÊOŠO{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06Eä-æÌ»ñà½—G½êÚİåŞV\0\0\0\07DÌ:‡Ûu¸ºÙ³ôvú¶o~6°~‰€óuVš­¸÷îü˜ú@úw \0\0˜À–`CXÀ–9\0€¤ -H\n@4\0Àh€`>€5Úîœ³°\'n+éaß´ÿ\0)txÖÀ8¼]Ê\Z›¹bX7%Ş²¸­7Ó½x€é@\0\0\0ğjºÆ6gãâ¹/ÕÚ[äıäŸ¨dçßw¯Ê¯tb½X®¨ <À\0o…Êº†n7µö‹‹õ|qr“]tÙ@%ş\Zä¶ÛÏƒokú7é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚä}ş»~í®Gßáû·é\0şÚd}ş?»õµÒ9LÂ»ù–]è:Ã%úø6×ÆN•\0\0\0\0\0\r?2êcÀq¶şıa\r»—K„\0³åM?ìø_hšú\\«²w—xĞ	€˜°XÀ†°!,lh@RĞ˜€ )\0Ğ€h ªÌúgÙ3è*YÈï.¥/„½ğ4ÀgÃÊ¹‹“o\"ß¯mñ.ÕÒ€ú.]¬¬{wí:Ââªìë@g\0Q­ëÖ4øû8ÒæT—vßB¯L€âr2oäŞ•ûÓs¹7Vß›°\0\0Qm¤¶¶ÒIo«è«ĞyaAÇ+:5¹¾İ‡µG©Ë·°™*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0›—#nœß\"›“}	oçšÆ¢õéßÿ\0Mwl®¨­Ş]àx@÷hú|³óíØÿ\0Mw®µÑéÜĞa¨­‘[ê]@6\0€L	`&°%,	`CX&0Ğ€´ )h€¤ €¤\0Å«iĞÏÃ¹b[$ÕmËªkp?¹jå«’·qpÜƒq”_C@@şUÕşÍ‘öK®–/>ãø³ÿ\0ò³¨\Z{™#‹ÅˆÔòwN{Ô=2œçrrœäå9:ÊOkmô€€\0»V®İ¹v¢ç9ºF+{`vZ.ÛÂáÈÉJyMl[Ô<½ oRH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àåù·W¤ñöe¶[r\Zè]ñÊ\0mèÛØsËšWØp”®/÷©)ö.ˆøªÜ\0À–\0˜À–`CXÀ†0!€¢À´ -0)0)h\n@R )\0Ğ\r\0À`4\0/ÍšNıBÌvª,„ºº\'ïË€»¹Í9ÒÓa‹íä¸ndt¸­ÔíëL\0\0\\\\\\Œ«Ñ³bw%ÑĞ—[ê@w\Z.‡§[âÙs&K¿{ŞRj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0\0\0\rn¹«ÛÓ±ıkóÙfo­ö 8—\'rä®\\—æÛ”ŸK`HÎXÒ¾Õ’²®*Ø°ëÑ)ô/ \0€LÀL	`&°%	`KÀ‰\0€´À´À¤ -0)H€¤@0€\0`LíÆp”$”£%IEîiôÁkzTôü·¯çzÌ»>+í@k€h\0«NÓ2³ï{+bõî?V+´çKÒ±p,{;J²—ë.?ZO´p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0<Ú†mœ,iß½*F;—LŸRçú}üì©ß½½ì„~,z\"€òéÓğ/gdÇÖùzÒèŒz[è8x–±q¡bÒ¥¸*.ŞÖ`@@&`H	,	l`KX !˜˜-H@R€¤@P\r\0Ğ\0€`yu->Î~,±îì®ØMoŒº\Zçù˜—ñ2\'z<7!äk¡®À0€Ğ\r#G¿©^j/‚Ä\Zö·:»é`w8Xøv#g<·ÖßH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0yv1¬Nõé¨[‚«oÌ¼ pzÆ¯{QÉã—vÌ6ZµZÑu¾Ö¼\n·nw\'vâå9ºF+{lïBÒ!§cÒT–EÄÙÿ\0Ê»0\0\0˜	€€–`K[[XÀ–6I˜˜€È˜˜˜€¤À¤ )\0Ğ@4 \05zæoQ±İ¤rmÕÚŸ_ä¾À8k–îZ¹+W\"ár“‹Ş˜¯OÔr0rë/²P~¬—S¼Ó5<lüuvÃ£İrÛõ¢ú˜À\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0^]Œk½~Jã½¿2í„Ö5‹úş\'XXƒú+]]¯ò€×\0Ò«§‘ ;\\Ğ¾É•“÷S]Øïà‹÷Øà0\0€L	lÀ–°%,`K$À†¦ -0-0-iH\nL\nL\n@R )\0Ğ\0\0€¥×ôŸoe(åÁx¦—Cíí‹œ\'	¸N.3‹¤¢ö4Ğ§;\'\"7ñçÃ5½t5Õ.À;[ÆÔmV/‚ôWÒZ{×jë@lª\0\0\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@U\0\0\0\0\0É©jXØ=­ùÑ?VÖ“êHUÕòuşÒãá¶¿We=‘^Ğ<\0\0uœ¹ËşË‡7.?I¾Í§ğ*]¾`:D€\0@\0 	€˜ÀL	`K`K`K[$60!°X˜ -Ih\n@R`R\r0)0€`0\0\0\Zmw@†|]ë†\\VÇÑ4º%é‹»jå«’µr. é(½0 –o]³r7-IÂä]c%±×èœÏk%FÆcV²7)î„ı\rú`0\0\0\0\0\n€ê\0\0\0\0\0\0\0\0\0\0\0\0P@\0\0\0\0\0*£Xæ\\»pjöWEµº?)ÅåæäåŞw²fçqîêK©.€<à4›i-­ìImmÕè·ì\\róc[ÛíÙ{x{eù@t‰\0\0€\0@&\0›[0%--,l	lll“$À”ÀÈ˜€´À´À´À¤À´LL\nL€¤L \Z€\0À\0Öë\Z6£n¿«ÈŠî]Ko‚]h\'3+\nó³‘­©ü.¸°<à?\'™rğ©jõoãô&ûÑğ7ï×`êX™¶ı¦=Å5ğ£ºKÂ€õ€\0\0\0\0\0\0TP\n€T \0¨@*¨\0\0\0\0\0\0\0r²ññ­;·®+p]/Ş”Õ¹®õõ+8Uµiìw_®×bèrm¶İ[ŞŞğbÅÛ÷cjÌ]Ë’õc;=—m`ÒşE.ett¨|ŞĞ7@\0 \0	€€@&`K6¶¶°!°%°!°%°1°%°1¶Å’,LLL\nLL\nL\nL\nLL€¤@R \0\r0\0\0>vŸ‹eÚÈ‚”zæŸZ`qz¾ƒ—§ÉÍ/k‹]—RÚ¾R÷ÀÕ€À»ïYº®Ù›·r;§Œ“Mç¸mçÆ¿÷ ¿J>€:\\lÌl«jæ=ÅráE×Ê`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"íëV`î]’„#µÊN‰xØö¥Íö-Ö1öÒêËdƒ¥Ëåæåeİö¹Éôu.Ä€Â\0³LÒrõœ6cKK×»%İ^Ÿ\0®™£âiÖéf5¹/^ì½izà\0\0	°` ÀL	`&°`C`K`K`K`K`C`C`C`C`cl	‹\"`Z`ZÓÓĞ˜˜€¤À¤ @h\n¦\0 \0\0Æ2Tj©ï@sš·)Û¹Åw«W7»/Ô~Ğ-ş=Çnô»‘ß*óâ e±“‘sÚØ¹+søÑtò¿ÀçĞ¤3mûEûXl—n¡ÂÖ4üÄ½…è¹tÁ÷eóXÔ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›/QÃÄ‹–EèÛü–ûŞE´\r9F8V¸¿îÜØ¼QœËÎËÌŸM×uô\'ê¯Ü\n€€¨Bs’„\"ç9:(ÅU¿“ÊS—\rÜ÷Â·«	íüçïÔÚµnÔ»qP„vF+b@P\0\0P€€š€›0%°%°%°%°%°%°!°!°!°!°!°1É€“âÀ¸°2&&¦¦&¦ \Z`Z`4À @¤À`4\0¦\0Ô\0›7OÄÍµìò-©¯‚Şõàkj—Ô¹K&Åg‡\'~Şÿ\0fè®/H\ZÂp“„ÓŒ–øÉQù¨\r=µéè`l15ıWŠœà¾Îò÷v¹ÅçHnÊÇqü»n«ÈèÛ˜t‹ôàÈŒ[ø3î¿t}»¶®*Âqšë‹M{€XP\0@*\0T\0Êp‚¬šŠën€x¯ëšUŠûL˜UtEñ?òÔ\rVW9â¤Ö5™]\Z}Åï°4Ù|Ë«dU+¾ÆÖÏó= k\'\')9I¹Iï“Úü M@@4ªÒ[[Ü€ÜiÜ±Ÿ”Ôï¶²÷9.û]‘ôÕiú>~‚ß}®õÙm›ñí\0\0¨\0P@@\0›[0`K`K`K[[[˜ØØDÀ´ÀÈ˜˜˜˜˜˜˜&&&LP)0\r\0\0ê€\0ê\0\0\0›7KÁÍ2-)ºlé/Ş9ŸÉ×ãÅ<+Šäz-ÜÙ/w¡ÉÄÊÅŸE©Z–îò¢ñ=Àa\0Ô`”`Ü_Zmy€õÚÕµ;_«Êº»8›^í@ôÃ™µ¨®¥ò£ïšÛ«­îÜ¼1§™Ö:§ììù%é\0ş±Õ?ggÉ/H.nÕåj>·ç`aŸ3ë3ÿ\0YGäÂ(5İgV¹ëåÜğ\'Ãæ Yİ»qÖäå7×&ßœÙÔP\0fÍëÓVìÛ•É¾ˆª¿p\ræ(g]¤ò¤±áñWz~„G¢iØI;Vëq©>ô½Ğ=À\0\0\0\0€M€€\0›jlÀ–À–À%°%°%°!°\"L	llm\rL	‹\"`\\XDÀ´À¤À´À¤À´À¤Àª€Ó““¦¨˜P\0@`:€\0\0ê\0\0.Zµv.7\"§¾2I¯t\rFg)éwë+JXó}0{>kM“Éú¶İ‰Âüzx%îìS“§çc?§±;}­:y@óï\0\0Ô¬ \0«\0Ú\0\0¨¬bed:Xµ;£…6€Úcr–«zâˆ¿êüˆ\rÎ\'éö¨ò%,‰.‡İ‘z@ÜØÆÇ±6ãn=QIy€Ê\0\0¨\0P\0@@\r€€@&À–ÀM--,ØØØØØØØäÀ‰0!°1É`d‹\"`Z`d‹Ó“Ó“Ó““˜\r0* 4¨˜\r\0T€T\0\0¨\0\0 &“TËHÓ2+í±­É¾Ÿ•à½ÊZMÊğ)Ú“&×‘ÔÎI·şT—R”Só0<ÓäÌåêdZ—…Iz@Á.PÕÖçi¯”×ÒšÏìáóĞô¦³û8|ôG”uw¿Ù¯Ïô 3[äÍAú÷íG±q?yé·É_´Ë}ª0÷ÛÙk“ô¸mœ®]}²I{ˆ}I±¶Ş-´úÚâ~í@öF1Š¢ØºÔ\0\0P\0\0\n \0 \n 6€€L	l	lØØØØØØØØØÛ˜äÀ”À¸°2Åq`Z`dL\nLL\nLL\nL\nL\nL\n¨˜\r0)0\Z`4Àu¦Ô\0P@`\0\0:€\0\0\0\0ê\0\0P\n€T \0\0\0\0\0\0T\0\0¨\0\n  \0\n &ÀM€›6¶¶`K`K`K`K`C`K`C`K`cll“˜Ø¦H°2&ÅiiiIiIIIII€Ó““¦¨ :€À*\0ÔP@\0\0\0u\0¨@\0\0\0\0\0\0\0\0*P\n€€\0\0*¨\0\n \0 @\0U6lØ	°%°%°ØØØØØØØØØØØäÀÆØ&E’,L‘`dLL‹Ó“Ó““““““¦&¨ U@u\0¨ 0@\0\0u\0¯Ôõı7LQûeŞÏÔ·å9.È <Ø<ß¢æ_<.JÕéz–ïEÛrğTf§¬ài–a{6ç³·9pE¨¹w©]Ê½@k¿®¹gïO÷w?éßƒ®é¹Ø—²ñ®¹Ø±_k.*p®\'±ªîézæ›ª+’Â»íU¶”ö8Ò»·¥Ô|ìü|iådÏ‚Å¤œåJïtÜ€7SÅÔq–N,øí6â¤Ó[c±ìt&f]¬Lk™7¥ÃfÔ\\îJ•¢]€i¿®¹kïO÷w=\0{tÎ`Ó5Gq`Şö®ÒNâq”i]Ş²]@cÔùŸHÓ®{‹Íßı…´ç?\Z[€Zo4húßabóGìnÅÛ›ğ\'¼ºŸ0ézd­Ç6ë´îÕÃ»)U*\'¹>°<_×<³÷§û»Ÿô°Ó5Í7S…Éá]ö‘´Ò›q”hŞÕë$‡+œô,{Ò³íezptŸ±„®%ák`í3[Óµ89aŞW8}xQ©ÇÃF¸\0P\0@@*€ª¨\n *€ªl	lØØØØØØØØØØØØå 1¶IL‹$XâÀÉ¦¦ÅiIiIIIII€Ó“¦&¨\r0@uÔ 0@\0\0uÔ2a¤sUİGP±+˜y£|ˆÇZ”Rªk f]Î_æ\\hãÚÌ‚º¤§jq¢»¶÷T’Şw”m`é²¹*ÆŞU·9¾¨Å¶ÚİıYÊuş2ÏÍôé¹ƒ›¡åä`Î7,;WR”c^ 9~Tÿ\0a—¥]İkUÆ•©ım©IÇÆâï™_Úò°4¥êŞœ²2Wı«*»~T€Aúõ¿­»ú@l9ÿ\0ëùÿ\0Q?0\Z}™9kGÃ³“•jíÚŒnFQuMuìi{ZÓŞ•¨àJmÙ„é8ª.(­ÛRéÉÉÚm«Z]¬û‰\\ÎÍ­ë×å¶O‰ìUğ|á¥YÉÒîåÅ(fb/kbúÙ%Ãµª®€=ú.Tu\r#.äbçvÚrª¯{s÷@ÓâÛ¶ùó2<+‡ìÙEMñ79äÜÅÒœj[¹™v8¢©E*ñnìTi¥éXšn$1±à£¥Å$¶Éô¶új?ÍğÒóğu¬X«wåk+‡b¹|d¼`u‰Õ\0\0\0T¨@UTP@M-€›jl	l	l	l	l	ll	llll“`C`c“˜H°2Eiq`d‹ÓÓÓÓ“Ó“““““¦L\nL˜P@uÔP\n€À*\0Û \ZLmz5Œ½+>6ì;m<n\'²ìÊÙP5Üß¥h4Û™q…¼lØÑãÎÕ#9NªŠ‹xÌÏ\"z6ˆò×ÓK\"Ã¿ÅÖãŞ­@è½¦Ş5l	Ëx«JÌ?³àVnV6øi¶¢ s\nÅÉr&]”ı¾YÚßÜ¸ø—Íg£_†§©j:ºÛb6Ö.+ü•9Óó˜È/ÿ\0^·õ—H\r‡3?ÿ\0Ÿõ3óçå¼èX2=¹JVbäÜ\"ÛğÕìÔtÛW´¼œ+0¸ß·(¨Æ).&¶:*«å\rZÔôûzuçì³ğ¾Ší‰ì“QÜÕw /›µ‹tË¸V¤®ææGÙY±Yw¶7DËDÂ–“‹‰*qY¶£*|mïİMŠÿ\0÷ìßÿ\0RxŸp¯äé*î<\\ïb\\øÅmmGÖ^@6:^±‡©bC#äZ’Nq®Ø¾”Öı€h9›*Ş­¨ah¸’W.Fò½•(÷•¸Ã­­€u‹p\0\0\n \0*€ªlP@M€›[6¶l	l	l	l	ll	llll”€Ç&6ILr`DX\"À¸°2E‘0-H‰iiIiIIIiI€Ó“¦T˜\r0)0\Z`ÔP@*¨@ğê:&™©F+2Â¸áêOt£à’Ú“”4,KÑ½w;°õ%vR¹ÂúÒ–À=Ú•ƒ©YœÛ^Ö—UZÛJWe:À×DrÇÜ—ÎŸ¤nƒ¤àÙ¿cÂ·k!RôS“âT§Kê=7\nÆÀµn˜ª.É¶×·ïğ€`é¸X8‹ß³°ªÔoÖßµíéúvŸ±ñ!ìì¦ä£VöÉÕï&^5œ¬{˜÷£Çfì\\gÕOÀÄÅ±‹oÄx,ÚŠ¸Õº%Ñ´Í¬Ô¹sGÔd®eXR¼¶+ÑnùÑŞÓyoFÓ®;¸Øé^ı¬Ûœ¼Mîf¶ <ĞÓpá¨OPºeÜ‚·;•{bº)¸KÚ—7”4,»®ôñİ»’u›µ\'n¾\Z =ºv¦éÖİ¼;´¥¶mm“ğÉíÙP\n€ªP@UT &Àš€ª¨P`K`&À–À–À†À–À–À†À–À†À‰HrØäÀ†ÀÇ&90\",‘`\\X# 2F@Z`\\dHÈL\nLRÓ““““““¦&¨ 4Àuª¨@uÔ :€TP\n€TP\0\0\0\0\0\0\0\0\n€ªP\n€ªP@*¨\n TP%°`*€ª¶l	l	l	l	l	l	ll	ll”€Æä6J@c“˜äÀ‡ 1Å’2\"`dL‘`\\X˜’2Ó“Ô€¤À´Àii€Ó““¦&LP@u¦¨ :€êP@*P@*P\n€T \0¨@*P\n€ªP\n€ª¨@UTP@UTØ	°%°`K`K`&À†ÀM\r.@C`K`C`c“% !°1¶9Hr`c”€Ç–,‘`\\X# 2)q˜‘H\nLR“Ó““““¦&TP@uÔP@uÔP\n€êP\n€êP\n€êP\n€T T T T *€ªlP@M€ªl	lP%°`K`K`K`K`C`K`C`K`cr$À‡ 1Ê@c”€‰01ÉŠR\"ÀÉ‘02&©’,‘`Z˜q˜˜˜˜˜˜˜˜\r0)0@¤ÀuÔ˜ :€TP@*¨ \0¨@u\0¨@*P\n€ªP\n€TP@*¨\n TP`*€›[6¶l	l	l	o¨	l	ll	lr€†À‰Hlr`cr$ÀÆØå 1É`Z# 2)’,R\"E -0)HRÓ“Ó”€¤À¤À¤À¤Àu“¦¨ U@uÔ :€TP\n€êP@*P\n€T :€ªP\n€ªP@*P@UTP\n€ªÔØ	°& &À–À–À–À— %°!°%°!Ère 1É@cr¤90\"RdDÀ´ÀÉ’2$X¤¦E -HL\nRÔ€µ -0)H\nL\nL\nL\nL˜˜ 4À® @uÔP@*¨@u\0¨@u\0¨@*P\n€T *€T *€TP@*¨\n *€œ€š€ªr[6¶¹---@Cä¶J@CÜ€‡ \"R¤9Hn@C`c”€Ç’2$d¦HÈŠ@\\dE .2Ô€µ -0)0-HRÓ©iJ@R`4À¤Ài€ø€ª€êâñ\0ê¨@uÔ :€T :€T \0¨\n \0¨@U\0¨\n TP@N@*€›\\€M€›[6¹-.@K`Cä6¹@Cä69°1Ê@cr% 1Ê@c”€Å–2$dDÀ¸°2F@dŒ€µ -HRÔ€µ -HL\nRÔ€¥ )0)H\nL\nR“©I€êL˜ :€ø€|@Ô :€T :€T \0¨@*¨@U\0¨\n @*€ª¨	ÈÄ¨	°%°`KØä¶¹.@CØä9@Cä9å 1Ê@D¤9Hrå 1Æ@dŒ€É’2\"¤Æ@dRã -HŒ€µ -HRÓ¦©J@Z\r0)H\nL\nR©\\@:€ÓÔ˜ˆP\n€êP@8€|@@@@@@\0âq\0q\0ªP@*r6¨\n \' `K`\' %°%ÈØä9.@C`K`Kä9@C`C`D¤9Hln@c”€‰HN@D¥P?ÿÙ',NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(100) NOT NULL,
  `serialkey` varchar(100) NOT NULL DEFAULT '0',
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (1,'34353C3C3D5CA39D83878D86F01E60C7B7DC','EA7AFB7CFD1D62DE5DBDC7B8AEDD2007779C','2021-03-25');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saida_produtos`
--

DROP TABLE IF EXISTS `saida_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saida_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(25) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `motivo` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saida_produtos`
--

LOCK TABLES `saida_produtos` WRITE;
/*!40000 ALTER TABLE `saida_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `saida_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'caixa','caixa','123','Operador de Caixa',2),(2,'Administrador','admin','123','admin',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `desconto` decimal(10,2) NOT NULL,
  `valor_recebido` decimal(10,2) NOT NULL,
  `troco` decimal(10,2) NOT NULL,
  `cliente` varchar(30) DEFAULT NULL,
  `formadepagamento` varchar(15) DEFAULT NULL,
  `status` varchar(12) NOT NULL,
  `caixa` int(11) DEFAULT NULL,
  `statuscaixa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,92.54,'2021-03-25','22:21:31','Administrador',0.00,100.00,7.46,'','Dinheiro','ConcluÃ­da',1,'aberto'),(2,66.10,'2021-03-25','22:22:54','Administrador',0.00,70.00,3.90,'','Dinheiro','ConcluÃ­da',2,'aberto'),(3,52.88,'2021-03-25','22:24:16','caixa',0.00,60.00,7.12,'','Dinheiro','ConcluÃ­da',3,'aberto');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `pro_pdv`
--

/*!50001 DROP TABLE IF EXISTS `pro_pdv`*/;
/*!50001 DROP VIEW IF EXISTS `pro_pdv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pro_pdv` AS select `produtos`.`codigo` AS `codigo`,`produtos`.`data` AS `data`,`produtos`.`valor` AS `valor`,`produtos`.`id` AS `id`,`produtos`.`nome` AS `nome`,`produtos`.`descricao` AS `descricao`,`produtos`.`estoque` AS `estoque` from `produtos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 22:30:47
