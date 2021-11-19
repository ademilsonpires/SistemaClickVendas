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
INSERT INTO `empresa` VALUES (2,'frigorifico da djé','avenida jose sarney','(98)99145-6623','36.366.290/0001','45215689','C:\\SistemaClickVendas\\Win32\\Debug\\img\\sem-foto.jpg','dje@gmail.com');
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
INSERT INTO `movimentacoes` VALUES (1,'Entrada','Venda',92.54,'Administrador','2021-03-25',1),(2,'Entrada','Venda',66.10,'Administrador','2021-03-25',2),(3,'Entrada','Venda',52.88,'caixa','2021-03-25',3),(4,'Saída','Gasto',100.00,'Administrador','2021-03-25',1);
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
INSERT INTO `produtos` VALUES (1,'1111111111112','teste de rede','1212',13.22,1.98,-16.00,'2021-03-25','����\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0��\0Ducky\0\0\0\0\0<\0\0��ohttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:53A51B95E5ADE711AE30F62E530C5BA2\" xmpMM:DocumentID=\"xmp.did:41BFFA89CBA911E792C3DE5609E3EB96\" xmpMM:InstanceID=\"xmp.iid:41BFFA88CBA911E792C3DE5609E3EB96\" xmp:CreatorTool=\"Adobe Photoshop CS6 (Windows)\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:B08E769ED5CAE711BF3FADD57E2AF65C\" stRef:documentID=\"xmp.did:53A51B95E5ADE711AE30F62E530C5BA2\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>��\0Adobe\0d�\0\0\0��\0�\0		\n\n\n\n\r\r\Z\Z��\0��\0��\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0!1AQa\"q����2��BRr�#sTb��3S�45�C$���c&�D�t%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0?\0�<bH����@���1��@�-DQ�@���)DQ��@���) \Z�@\Z@4�i\0���>\0(�\0(�\0(@\n\0P�P�*\0P@�\n�*\0�@N *48��\\@���%�%�q\\@���!��@�!�q�J cq%1� c��c2F dQ����D� Z����j Z@R@Z���(�IJ R@4��\0���T��H@\0t\0����\0��\0�\0T\0�\0(�\0T\0�\n�*\0�P�	�\'�@@K@&��%�%�	hq@���!�q@�Dm c�@��$9Dr�#2Eq@d�@ȢE-D� Z���(�j Z���$$$$H\nQ�H\nH��:\0��\0t\0��\0��\0�\0(@\n\0P@\n\0P@\n\0��\0TP�\n�K@*\0�Z4����. K@C�(�\r- C��7!�\"Q�9D��H�H��@Ȑ��D�@Ȣ$��j Z@R@Z@R����\r ) ) \Z@:I\0�@\0t��:\0�@\n\0�@\n\0��\0(@\n\0P�*\0�@\0(�\0TP@%�@K@*\0�ZZZ\\@�������!�h	q�(����@� 1J c�$������D�j d��Ȣ���j Z@R@Z@R@R@R@R@R@4����\0�H@\0t��:\0��\0t\0�\0t\0�\0(@\n\0P�*\0P�*\0P@\0T\0�\n�*\0��\n�K@\'%�@K@K@K@K@K@C���I\r D�9 1��@c��9 .1,bH�.(��#- - .1\"���������\r *�4���i\0��@\0t�@\n\0�@\0(@\n\0�@\n\0P�P�\0�\n�P�*\0�P@\0M\0�4h	h	h��������(���(�����(��HR�b���2E�(������� - ) -D\nHH\nH\nH���\r ) \Z@:\0���U\0(������\0�\0(@\n\0P�\0�\n�\0�\n�P@�Th�\n�&�M-\0�ZZ4��4��\r-@c�\Z%1����$9 2Eq@d�$P@�����@Z@Z@R��������\r ) \Z@:\0���@\n\0��\0t\0��\0��\0\0\0\0\0\0\0\0P�P�*\0P�\n�4�@\0M\0�h��������4�J chhq���$��1��D��2EiI� ) ) ) - ) ) \Z@R@4��\0��$�\0t�@\n\0�@\0\0t\0�\0\0\0\0\0\0\0\0\0(@\0\n�P�*\0�@\0TZ4P	h	h���������(��Hhr�䀆��$��(�@Z@Z@d����@����������������i\0���H@\0t�@\0t\0\0\0��\0�\0(@\n\0P�\0�\0\0�*\0\0�@\0TP@@&�M-\0�Z4����4�444I�Hh��䀸�2E� - 2F Z@Z@Z���������\nH���:\0�����\0\0�\0\0`\0\0\'(���a�v\r�_\"�|3��2���˷寘|â��k���P�{����h�ݗo�hj=L�R�T��<e	*�I��P\0\0�\0 \0\n\0�T\0�\n�*\0�P��	�%�@K@K@K@K@K@C@K@C@C@C@D�䀆��$9D�$P�\"�Ȑ�iIiIIIIII\0����\r �:\0�t\0\0�\0\0����t�Z�|�E��Z�\"��#�p�ڱjw)��W�������Bݕ�����<��Z���4���W�h�wn��s���o��u\0P�\0\0��@8�pu��i���곫�W�qv9q/�T}�mխ��y~Th�\0����J�\"Ġ�e���LmsJɢ��\'�gݗ��ruڀ`\0*\0�\0(P@\0TP�	�%�\0������������������� !�1���\"Hr@\\P�\"�Ȑ����������@\Z@R@R@:\0���0\0\0\0t�l�ϕ���<����D�����7�mƱô��=��~j��/[���ߒ������M�����\0\0\0�PP@\0\0(@\0\Z��=X���������+u������)��e��������\0T�̍q�Fr��%�`z�@\0\0@*\0��	�@K@K@*-----\r-\r\r@D����$$��(HHHHH\nHH\nH\nH\nH\nH���@\Z@:\0�`\0:\0�(�;U���E���o�3�sn]��?g���ٿy��r�ٹܓ���I���J@0\02Yǿ~\\6m����ߘ\r�?+j�Rr�l���Ȫ��%7G{*�����\\���w�v�鬩�@za�\Z,��_*R~���i�q-������N�ыk�G��\0��8��d}\0D�M&[�m|Ԁ�>Zѥ�\0֌~K����]��*^��m�J�z���Q�g)��8���#��[u�|�����:������}����-�]�a\0\0�\\�%$ڒ���6�Ѩc5�����%�ސ:};\\�ϤmO��M�엋���\0@\0@&�M\0�M\0�ZZ4����4�4�6�� \"HR@C@TP\"�Ȑ�\"�����������������iII\0��\n�@\0\0y1�;���ێ�I�_S�۷+k{8nw����9��w&�rNS{\\���\n�@\0�V�]��js{�V���ԖCX�}�:x���t�s��5�q�W䭀m�ڷn*0��V��Q{�UP\0\0\0\0\0\0\0\0\0D�#%F�Oz{@�e�ޕ�V��9��m�\"��7����X���Iwe���##\Z|������_\0[S�޷5������/��W��g��xz@���sm{\\{�q�[��=\0 \n\0�T\0�\n�K@ @K@&�����4�4�9 !�!�1��H�\"@\\P�������\rIIH�iI\0�i\0\0�\0؀���������.O���@~n���w�dM�������\0q�rrn{<{r�7��P����y�)��m����b���Ã�mǦ�k�=\0\0\0\0\0\0\0\0�\0(@\0\0\0\0\0\01_Ʊ~��F���U���fu����e*�x�P�f���>�N�wK|_�K`p\n�\'#\Z�b�q|%�ks�����O\r��Y��)|	?x\r��\0\0@\0�Z4h	h	h	h�������$9 !�1�Q@dHH�iIiiIIH\nH\nH\nH�`P�\0\r ��\\��[[{�嵮ir����t�=�z@涶�umշ���\0q��%�)Kb�����W��w9�(o�1����:�l<lkj݋j�:��\0\0@\0\0\0\0\0\0\0\0\0\0\0(�\0\0\0\0�X�zܭ݂�%�FJ��@�>PRr����ؓ��L�<`sW�^�uڽn�w�J�`\r��y��\'\r����|�=(���W���)ے�d��\0�\0` �M\0���������������������䀴�����2$$��$� ) ) \Z��) \r\0\0�h�~͛S�vJ����$������Yn�\"��)����5\0\0{t�\'/Q��f4��{ү},�K�����x�?Z����K�� \0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n�\0\0&��j\Z^u��^���G���u}/Onk�q��u-��.�5`\0{��g\'N��{���%����0;�,�l�xޱ>8KʟS�;@ @ @K@&��@C@&�4�44�9 \"HmQ@dHH@Z@Z@Z@R@R@R���i\0��h\0��2-cٕ۲P�YI���:��F�\n�1����_�H\rh\0��.���ȭ�]�|)�;;@�cٱj6��[�\r��܀�\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\0\0L�E�I4�4��\'�򻶥�����?J퇠l\0^��������?�ۮ�G��w����c���qA�Oz}LC@*\0�\Z,�M--,	h	h	`C@C@C@C@C@c��$P���������\rH��@\04�i7n۵r�aYI�I 8moZ����qă�8t��i�\0���Z���΋���X}=���$��T�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P{_����bEG!m���~��I4�d�kcOz}5���<�;%]��e�}^�;�,�x�f\\V�^���P�\n� ��`&�@C@KZZZ\Z\Z\Z$�������$�@Z@P\rH�`0\Z�7@8�c���u�������K�T�\0��yv�9���³a�$���u(@\0\0\0\0\0\0\0\0\0t\0�\0(@\n\0P�*\0\0\0\0\0\0\0\0\0\0�\0�/3̯_������Ի@�l��f�\"6����+{�h \06:&�sNɬ�,k���\02�@wv�ۻn7-�(MV2[�`S0�M,�4`C@K@C@C@K@C@TP�@Z@R@Z@R���iI\0�`4�����iڋ�Ǘ��}<��b����%EE�\0���\'y�7&?D���k���P\0�\0\0\0\0\0\0�:\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0\0�S��t����ׂ֓�@p���������W��\'݊����\0\0\0�\Z���+������G��נ\0\0�M-\0������4�!�\"H�$�ihH������� )\0��h\0\n��ֵHi�R��ޗv�L��\n��;��7�9��\'������\ZY���k�ￌ�*���a�*1TKbK� (�\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0\rn���iֶ�%�~��{|/��ff��_��qI�[�_=H\0 �=��MB�sn[�����E=�h\0�\0��;^Z�>ٌ���l���e�^�7@ $���L	`KZX������������ihH\nHH\n@R@R�\r )\0�`4@)�0���#V�B@p:Χ,��\\M�wl��U��p\0=:~�ܸc��\'ޗŊ���%�\\xcُ\r�*.޶� g�\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0�I��\r��)s-�oP헠2�뷮���9ܛ����\0\0��8�)�rt�V��R@u�-��\'1)_[aoz������n���d�(�����ON�p[lN��.ί\Z�3�e��ʷ�oֶ������,L�YX���u�q\'@X	��@&������!�%�!�\"H��- - -H@R���@P\r\0�`09�l�ݫ+ԩr���.��\0�-i?c�Wnƙ��1��\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�@sz�2�<X�RR��\\����.�9&�&�&ܛ�oko��\0x�/d^��0s�\'E�\0\0�>_��v�.e��}]Q􁷠\0\rgM���;/e�޵>�/H>�nv�(Mp�-�I�5� t<���w��ܹ޳�.����@@&` %�������!�,�$4@Z���� )@4 \Z����~�,ٝٺBr��[@��n]̼��3{n:���\07��}�;�MVŊJI�����\0�\0\0\0\0\0\0\0\0\0\0\0\0rK�<�}�/�ڱ�k��>Ս�X|���o��� �c~�9\0}������Xߵ��@i���>r��ݵu�(\0\0\0\0)(�ۢ[��׹������-n�}o�CQ���{@T\0>Nm�c<S{[~�W[`w:F���Z�;�侒���Rb\0`*�sv��v9��v�#y%�$6Bs��8:N\rJ/���}KΆn���ﮩ-�[@@&`H	�,	`H��0!�-h@R��� \Z�h�`09�n�8,Cm��ξ�^6&I��Uob]u�:.��0-٧�>���\'��7��\0\0\0\0 \0\0\0\0\0\0\0]O:�\r컾���Qt��x�)���SR��dޒ��lE������~�\0\0\0\0\0\0\0=��~�s\"�-�2����9_[z����(�[n����KmW��\0\0/^�fܮ]�����ObH/\\���V,V��Ɵk�]�i@\0\0��zNV�����^~�|]/��N�q�,+6#N�M��}m��\0\0\0�3\Z�N5�=K�q}�� >s��s\"�=�Iۗ���@t��;YSÓ�^�[�D���@u��L�@K0%�,`KX��I\0��-h\n@R@Z�)H�)\0��M��k}�|�T�y��o��ȭ�(�U��V��k���\0�n��\0\0\0\0\0``���Ň�ɽ0��$���5��yi:<�x�����埿C����e�?~�͟��˖~��?@��,��6~��.Y��>l�\0�\\���|��\0��2i�4����v��A�	IwU[ސ(\0\0\0\0\0\0\0\0\0W\"�x\Zl�#�}Y��	B���U=����Yr�ߡ�g�\0��埿C����7���V��rTmF1�]<@s\ZƷ��\\��<h��Ͽ.��\0\0\r����r\\�v�\0X�\\muF;�`wx��1��͈�[�����@�\0\0\0\0` 9Nr��ek:d����.���޹f�/[t��)E���}\"֯�ջ%�3@@ X�L`KX���-h@R��� \Z�U̙�f��p�\\�Kp���DJ\0����4�|J�/}%��/j\0\0\0\0���u[z^�w2k�ǻn\Zo�@|�??/?\"Y9wۭ�Wr]Q]	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-�/ˆw�.���=�0�����`d\0\0ɗ��������k�޻����S��ԫ�P>�ɼ�=S\nV�Zy��W%��Y{��\0\0\0\0˨��3�<�Z�����|�p�\'(MRqmIv��Ho\'�;��1d�+/��e� t@ 0%�����%�,`D��\rh\n@Z��� \Z�`4@08�p������ُ��O�\Z\0=�F�5)X�qO��k�S� \0\0\0\0\Z\0��I����m>��7%��=�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03������[��kj�-AB\n�o��\0\0�e��0<%zŊ�.)AK�R�,Zq�d�4���(���S�O�y9G\\���Ī��@}$��\0\0\0�8_g��r*��\\j���@i��r�[��mU�kj^=���0\0��`KX���!��H@R�\rH\n@4�H�[^�>s�d��:�����]��^�p:~L��.K��� :�\0\0\0\0\07�+�L����\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�baJ�S�vߺ��EF1Q�J+r[�`\08Bs��\"�9:F+ko��A��p��%<���������8�~ЭO�\0+f4�i��Qz�n������������� }(\0\0\0\0\0C�؞�NW��c�K�e���q`8�P��}h���N����G#\Z����ʀ���L���%�,	`C�q��� -H\n@4 �Y��>��ul��Q}�ؼ�|�n\0������xR��}��3��\0�\0\0\0h\0\07�+�L����\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�a�R����1����I%D\0\0���M��ol������ ��ުr��º���\0��\\�Ǘs��;n+��K�䵨7��������\0\00\0\0\0	��/9�l�j�*撌�\'	o�i�հmʙ�I�[�Y�����\0�L	`&�%�,`K @� -H\n@R��h�h��o8i��-�n*�Ȫ���ŧv��Kk�8�/�L�J*+rؼ@Z\0\0\0\0�\0��%	����8 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\r&��� 68x*4�yV}��\0\0]�n���KS��;�\"�Xt :>J�[:|僙>[��u���������Мg(���MmM\0JJ)����Ϲۙl��Nß�K����)��\"M�}���D���@\0\0 \0\0\0��|�]��u|��D���\0:^K���Vn/u��\0�	��	�,	`KX���\"@����)H��\rH���;��Ƴ�JO�������^�Y�]�����@[��\0\0\0\0\0��J��g� p@ \0\0\0\0\0\0\0\0\03��e�^Vq,����b�OW��N�9˹,��e=�ե�/��7����֒�;�[���o�<(���[k�(.�)����j\\��F��B��8�U��N�-�r�0l؜����mBmSg]X�\0\0Ñ�n�{�d�X���~��qM��]�0\0=�zέ�\\��a��uH�������˻r1�_�*�\0��>�~��~x���\0\0\0\0\0\0^��6T5;w떗�-�0\Z6��w����v2��q{�v�p\r�,X	�,	`CX��\0��� -H\n@P\0�\0�9���(�HEyv��i���}�-Rs���7�iڠ\0\0\0\r\0\0\0��%	����8 \0\0\0\0\0\0\0\0�[�\\�^j����E�W~��z@�N���i��i[���m���`z�\0���c�ؕ�(�y[�HV�r5+���x�۵�˭��\0\0͕�+�w��G���s���\'Y=�	\0\0\0\0\0\0��>�~��~x���\0\0\0\0\009nv��Ĺ�Y���٣��z�$�},S���C\0  ���!�,	`C\0@Z��� )H�`P\0�\'ǭe>�(�\"�\Z�:NI�r2������@0\0\0\0\Z\0\0\0��J��g� p@ \0\0\0\0\0\0\07<����3�gX�٤�&�k�+��,X�b�mZ���%AlI.����5lm>˹u�M����i>�H6��d��w���e�-�]K��\0gN�3�iz��\"z�m��Z�^.���4�n�ս�\0\0\0\0\0\0\0M�}���D���@\0\0\0 \0\0\0��8WO�?�u/,Xhq���f_��H�v�\0��0%�,	`KX��\0���)H\n@R��\0�\r�^\\Z�\\���������˗�Ay�@0\0\0\0\0\0\0o�W�?[?��\0\0\0\0\0\0\0�m�V�%������^�!�ivq��_^���-�ɸ\r�\0\Z�k]��[��fL�aiy�Ԁ���_���s�.�����\0��S���8r��}�wʟ����wl��ȩ[�q�^��>=��\\��,�9��Sj-�����y\0\0\0\0\0\0\0\0������� }(\0\0\0\0\0\0\0���|k�7��k�@q\08�I>������:ۋ�K� &`KX	�	`C\rH@R��h\n@R����ƥ��+�g��Y�?���q�0:t\0\0\0\0\0\0\0��J��g� p@ \0\0\0\0\0\06������U��;�_!U{�}e\07@4Z�1�����j�WK�x{{\0�n\\�v�\\����)Kk`H\0N��qs��#���@v\Z-�G#-)�o�7����\0|��CS��J��ӌ�U���\0\0\0\0\0\0\07��������\0\0\0\0�\0\0\0\0��g�k�.�`}6��m����L`K0%�,`K��� -H )\0�\r\0�h�ꊚ�R�\0�?��Y�?��_��0:p\0\0\0\0\0\0��J��g� p@ \0\0\0\0\0\0:�����w[ެJ�: }�-�s:�3pqb�ʳ�r�ړ�Q�ʶ�m�ok{��\0�\Z�M�س;���؀�]Ɵ9R�T�z�B�`\0\08�Ĩ/��ϥ\\���z\0��\0\0\0\0\0\0\0������� }(\0\0\0�\0\0\0\ZNmt�����@p�0>�iR�TW�\n\0�	�,���!�,`K\0@R��� (���\r��n.:�Z�\0�������rL����5�:�\0\0\0\0\0\0��J��g� p@ \0\0\0\0\0\0:Gʆ>�9(��r{�ļ�o��e�G6�ln�ws�dz�\Z��\0\0�\r?\':��b5\noՊ�l�I�1��<��~������{�\0\0\0�rx6�߸�fȠ8�\0\0\0\0\0\0\0:o�����\'�J\0\0\00\0\0\0\04�*iq�ƻq6��v�Iy]\0�jT�]@\0&0%����!�,`K\0@R��� )\0��h���48u���P��(\rX%Ι���\'��ح�0\0\0\0\0\0��J��g� p@ \0\0\0\0\0*��Y=�\r�.l��޹JW���\0\0~��d�7�\n��_�]{�b�`w8\Z~6\r�f�xb���>���\0\0\06ʹ�RY���A��?�[����f��\0\0\0\0\0\0\0�~?Q?<@�P\0\0\0	�\0\0\0=�s\\�:b�C�\\oȿ�DF�i���v����\0\0���`KX��0%� )h\n@Z�\rH\n@0��9�ӎ�n}--��m�qʷx5�k��er����\0\0\0�\0\0��%	����8 \0\0\0\0j�˳����km��n�{�f�iz\0�\0\0�C�/jWnV�\"���*tG�o��g\Z�lي��*F(�\0\0\0\r7k��4�Bܿ�d\'u���p>]��`\0\0\0\0\0\0\0\0t߇����O�>�\0\0\0\0\0\0\0{��9��rq�WՄ��n���^��5�U�9��M��t\0\0�@&�X���!�,���)H\n@P�h\0��9��,[�z���*�0��.��Ա��F�k�n��H��\0\0\0\0\0\07�+�L����\0�\0\0\0ˏ�r��a�z�}\0m�X��p�x_K \0\0^����_gɽ(퍝��>�/x��!(E(�;\"�Đ\0\0\0T�^�-\'��S�%�V�I��G���Z�V��<��q\\����F=�(\0\0\0\0\0\0\0\07��������\0\0\0\0�\0\0\0R�����u-��{���ԁ���<z�۟���ᓧ�Ǡ\0�0%�,	`&0%�`@R��� )\0�\n� 5\\�c���ZU����^�q��i���5�@}+\"9vo��\\�e�kh�\0\0\0\0\0\0o�W�?[?��\0\0��ĝ�Wݶ�˯���n�H�(\0�k���[v_ʟ_bM4�kji�O�Q���v$ag:?k��+�eԼ�����C�K�e�{�]�9\'��\0��q��Zk�m\0rIU�]�x3u�#\n-�eۃ_IJ_65`r����ekK���ϴ]_�HvFE��ҿ�rWoO֜�[\0\0\0\0\0\0\0\0\07��������\0\0\0\0�\0\0\0Si&�Ķ��3o��6���\\����\0�]�v8q/�=�f���`t,\0��	�,	`KX��0 -H@R��`0\0�Ǖe^ǹe�A��\0���(NP����k�:\0��9C/�i��}�q��w��\0\0\0\Z\0\0\0��J��g� p@ \0=x�2��˛-t.��(�R*�n@0\0�����[�[���{��\r�����\0\04��H����\0Wrp�2k��s�Ț��\\�����t\0\0\0\0\0\0\0\0\0\0\0\0��>�~��~x���\0\0\0\0\0[����KȚt������>}J\0�\r��V=��\'9.����=�\0��L	`KX���!���� -H\n@4\0�h\n@\06�x�g��QR7iv>=��X��ݍO�7HdE��؁܀\0\0\0 \0\0o�W�?[?������W/-�Շ���l\0\0n\\��9��(\rVV\\�n��G�`y�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������� }(\0\0�\0\0\0\0���.�����..ײ>���g��b�U��I�����$�[؀\0�@ %����0%�`��� )H\n@R�\Z�\r�s�\'=����_���w�$ڻ;W#rۤ�Ԣ�S�I�ɎV-��z�b���p\0\0\0\0\0o�W�?[?���n�U�����V�;�9�G��\0\0���[�߱Eol\rNFE�Ӭ�/U-�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t߇����O�>�\0\0\0\0\0g%��M��5<�fg��{�.�dV������?i�w*K�f<�R�\0\0:�	��	�����,	`CX @��)h\n@R�\rH��|�H�b]ǖ�kǽ?(9�\'n��RPn2�Zt@�y3?���)�����L��(0\0\0\0\r\0\0�~#Y�s	�.T�$���\0r��P���%q��v = \0\0a�ʅ���7�\0jn޹v|su�Gb�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\"޻9tBī�H��\00\0\0\0\Z^j��6�����Gѯ�������i����\\^��_�ɀ�@ X	�,	`K��H-h@R�\rH\n@4�h\0�X.ơ��o%q?��K˼\r �;6xY��c���%�� >�f�.Z��o�JQ}i��\0\0\0`ys�|+��p�z��I�Et�����N�{�}�1�U��v��<\0\0\0y��#f��z�WW�\rT�)��O�O{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06�E�-�̻�བྷG������V\0\0\0\07D�:��u��ٳ�v��o~6�~���uV��������@�w \0\0���`CX��9\0��� -H\n@4\0�h�`>�5��\'n+�aߴ�\0)tx��8�]�\Z��bX7%޲��7��x��@\0\0\0�j��6�g���/��[�����d��w�ʯtb�X���<�\0o�ʺ�n7�����|qr�]t�@%�\Z��σok�7�\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0���}��~��G�����\0��d}�?����9L»��]�:Í%��6��N�\0\0\0\0\0\r?2�c�q����a\r��K�\0��M?��_h��\\���w�x�	���X���!�,lh@R����)\0��h����g�3��*Y��.�/���4�g�ʹ��o\"߯m�.�Ҁ�.]��{w�:����@g\0Q���4��8��T�v�B�L��r2o�ޕ��s�7Vߛ�\0\0Qm����Io����yaA�+:5��݇�G�˷��*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��#n��\"��}	o�Ƣ����\0Mwl����]�x@�h�|�����\0Mw������a���[�]@6\0�L	`&�%�,	`CX&0��� )h�� ��\0ūi��ùb[$�m˪kp?�j嫒�qp܃q�_C@@�U��͑�K��/>����\0���\Z{�#�ō���wN{�=2���rr���9:�Okm�\0�V�ݹv��9�F+{`vZ.�����JyMl[�<��oRH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����W���e�[r\Z�]��\0m���s˚W�p��/��)�.����\0��\0���`CX��0!�����-0)0)h\n@R�)\0�\r\0�`4\0/͚N�B�v�,���\'�ˀ���9��a���ndt�����L\0\0\\\\\\��ѳbw%�З[�@w\Z.���[��s&K�{ޏRj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0\0\0\rn���ӱ�k��fo�� 8�\'r�\\��۔�K`H�XҾՒ��*ذ��)�/�\0�L�L	`&�%�	`K��\0������� -0)H��@0�\0`L��p�$��%IE�i��kzT�����z̻>+�@k�h\0�N�2��{+b��?V+��Kұp,{;J���.?ZO�p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0<چm�,i߽*F;�L�R���}��߽��~,z\"�����/gd���z��z[�8x��q�bҥ�*.��`@@&`H	�,	l`KX !���-H@R���@P\r\0�\0�`yu->�~,����Mo��\Z�����2\'�z<7!�k���0��\r#G��^j/��\Z��:��`w8X�v#g<�����H�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0yv1�N��[��o̼ pzƯ{Q��v�6Z�Z�u���\n�nw\'v��9�F+{l�B�!�c�T�Eĝ��\0ʻ0\0\0�	���`K[[X��6I����Ș������ )\0�@4�\05z�oQ�ݤrm�ڟ_��8k��Z�+W\"�r��ޘ�O�r0r�/�P~��S��5<l�uvã�r������\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0^]�k�~J㽿2���5����\'XX��+]]���\0ҫ�� ;\\о����S]�������0\0�L	l���%�,`K$����-0-0-i�H\nL\nL\n@R�)\0�\0\0�����oe(��x��C����\'	�N.3����4��;\'\"7���5�t5�.�;�[��mV/��W�Z{�j�@l�\0\0\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@U\0\0\0\0\0ɩjX�=���?V֓�HU��u���ᶿWe=�^��<\0\0u����ˇ7.?I�ͧ�*]�`:D�\0@\0 	���L	`K`K`K[$60!�X��-I�h\n@R`R�\r0)0�`0\0\0\Zmw@�|]��\\V��4�%���j嫒�r. �(��0 �o]�r7-I��]c%�����k%F�cV�7)��\r�`0\0\0\0\0\n��\0\0\0\0\0\0\0\0\0\0\0\0P@\0\0\0\0\0*�X�\\�pj�WE��?)�������w�f�q��K�.�<�4�i-��Imm�����\\r�c[���{x{e�@t�\0\0�\0@&\0�[0%�-�-�,l	lll�$���Ș����������LL\nL��L�\Z�\0�\0��\Z6�n��Ȋ�]Ko�]h\'3+\n����.��<�?�\'�r�j�o��&���7��`�X����=�5�K��\0\0\0\0\0\0TP\n�T�\0�@*�\0\0\0\0\0\0\0r���;��+p]/��չ���+8U�i�w_��b��rm��[���b���cj�]˒�c;=�m`��E.ett�|���7@\0 \0	��@&`K6���!�%�!�%�1�%�1�Ł�,LLL\nLL\nL\nL\nLL��@R�\0\r0\0\0>v���e�Ȃ�z�Z`qz������/k�]�RھR��Հ���Y��ٛ�r;���M��m�ƿ���J>�:\\l�l�j�=�r�E��`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"��V`�]��#��N�x�����-�1����d�������e�����u.Ā�\0�L�r��6cKK׻%�^�\0����i��f5�/^�iz�\0\0	�` �L	`&�`C`K`K`K`K`C`C`C`C`cl	�\"`Z`Z��������� @h\n�\0�\0\0�2Tj��@s��)۹�w�W7�/�~�-�=�n����*���e����s�ع+s��t���Ф3m�E�Xl��n���4�Ľ��t��e�X�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�/Q�ċ�E������E�\r9F�8V����ؼQ����̟M�u�\'��\n���Bs��\"�9:(�U���S�\r��·�	�����ڵn��qP�vF+b@P\0\0P�����0%�%�%�%�%�%�!�!�!�!�!�1ɀ�����2&&��&� \Z`Z`4��@��`4\0�\0�\0�7O�͵��-������kj�ԹK&�g�\'~��\0f�/H\Z�p��ӌ���Q��\r=���`l15�W������v����Hn��q��n�����t���Ȍ[�3�t}���*�q��M{�XP\0@*\0T\0�p�����n�x��U��L�UtE�?��\rVW9��5�]\Z}��4�|˫dU+�����=�k\'\')9I�I����M@@4��[[܀�iܱ�������9.�]���i�>~��}���m���\0\0�\0P@@\0�[0`K`K`K[[[���D���Ș������&&&LP)0\r\0\0��\0�\0\0\0�7K�͍2-)�l��/�9�����<+��z-��/w����şE�Z����=�a\0�`�`�_Zmy���յ;_�ʺ�8�^�@�Ù�������۫��ܼ1����:����%�\0���?gg�/H.n՞�j>��`a�3�3�\0YG��(5�gV�����\'��Yݻq���7�&ߜ��P\0f���V�ەɾ���p\r�(g]����Wz~�G��i�I;V�q�>���=�\0\0\0\0�M��\0�jl������%�%�%�!�\"L	llm�\r��L	�\"`\\XD���������������������P\0@`:�\0\0�\0\0.Z�v.7\"��2I�t\rFg)�w�+JX�}0{>kM�����݉��zx%��S���c?��;}�:y@��\0\0���\0�\0�\0\0��bed:X�;���6��cr��z�⍈�����\r�\'����%,�.�ݏ�z@���Ǳ6�n=QIy��\0\0�\0P\0@@\r��@&���M�-�-�,����������0!�1Ɂ`d�\"`Z`d����������\r0*�4��\r\0T�T\0\0�\0\0�&�T�H�2+�ɾ�����ZM��)��&ב��I���T�R�S�0<�����dZ��Iz@�.P���i��םҚ���������8|�G�uw�ٯ�� 3[��A���G�q?y��_��}�0���k���m��]}�I{�}�I���-����~�@�F1��غ�\0\0P\0\0\n�\0 \n�6��L	l	l�����������������2Łq`Z`dL\nLL\nLL\nL\nL\nL\n��\r0)0\Z`4�u��\0P@`\0\0:�\0\0\0\0�\0\0P\n�T�\0\0\0\0\0\0T\0\0�\0\n� \0\n�&�M��6��`K`K`K`K`C`K`C`K`cll����H�2&Łi�i�i�I�i�I�I�I�I�I�������:��*\0�P@\0\0\0u\0�@\0\0\0\0\0\0\0\0*P\n��\0\0*�\0\n�\0 @\0U6l�	�%�%����������������&E��,L�`dLL�����������&��U@u\0��0@\0\0u\0�����7LQ�e��Է�9.Ƞ<�<ߢ�_�<.J��z��E�r�Tf���i�a{6糷9pE��w�]ʽ@k���g�O�w?�߃��ؗ��ر_k.*p�\'����z曪+�»�U���8һ���|��|i�dςŤ��J�t܀�7S��q�N,��6��[c��t&f]�Lk�7��f�\\�J��]�i���k�O�w=\0{t�`�5Gq`����N�q�i]޲]@c���HӮ{�������?\Z[�Zo4h���ab�G�n�ۛ�\'���0�zd��6���û)U*\'�>�<_�<��������5�7S���]���қq�h���$�+��,{ҳ�ezpt����%�k`�3[ӵ89a�W8}xQ���F�\0P\0@@*���\n�*��l	l������������� 1�I��L�$X�����Łi�I�i�I�I�I�I�I����&�\r0@u��0@\0\0u��2a�sU�GP�+�y�|�ǍZ�R�k�f]�_�\\h��̂���jq����T��w�m`鲹*��U�9��Ŷ���Y�u�2���鹝�����`�7,;WR�c^�9~T�\0a��]�kUƕ��m�I����_��4��ޜ�2W��*�~T��A������@l9��\0���\0Q?0\Z}�9kGó��j�ڌnFQuMu�i{Z�ޏ���Jmل�8�.(��R����m�Z]���\\�ͭ���O��U�|�Y�����(fb/kb��%õ���=�.Tu\r#.�b�v�r��{s�@��۶��2<+���EM�79�����j[��v8��E*�n�Ti��X�n$1����$�����j?�����u�X�w�k+�b�|d�`u��\0\0\0T�@UTP@M�-��jl	l	l	l	l	ll	llll�`C`c��H�2E�i�q`d�������������L\nL�P@u�P\n��*\0۠\ZLmz5��+>6�;m<n\'����P5�ߥh4ۙq��l�����#9N���x��\"z6����K\"ÿ���ޭ@蝽��5l	�x�J̎?��VnV6�i�� s\n��r&]���Y��ܸ���g�_���j:��b6�.+��9���/�\0^���H\r�3?�\0���3����X2�=�JVb��\"�����t�W���+0��߷(��).&�:*��\rZ���zu�����Q��w�/���t˸V����G�Y�Yw�7D�D���*qY��*|m��M��\0����\0Rx���p���*�<\\�b\\���mmG�^@6:^���bC#�Z�Nq�ؾ����h9�*ޭ�ah��W.F�(���í��u�p\0\0\n�\0*��lP@M��[6�l	l	l	l	ll	llll���&6I��Lr`DX\"���2E��0-H��i�i�I�i�I�I�I�i�I����T�\r0)0\Z`�P@*�@��:&��F+2¸��Ot������4,Kѽw;��%vR���Җ�=ڎ���Y���^��UZ�JWe:��Dr�ܗΟ�n���ٿc·k!R�S��T�K�=�7\n���n��.ɶ�����`�X8�߳���o�ߵ���v����!���V����&^5��{����f�\\g�O��ű��o�x,ڊ��պ%Ѵ��ԹsG�d�eXR��+�n����yoFӮ;���^��ۜ�M�f� <��p�OP��e܂�;�{b�)�K��7�4,����ݻ�u��\'n�\Z =�v����ݼ;���mm�����P\n��P@UT�&�����P`K`&������������������Hr�������&90\",�`\\X# 2F@Z`\\dH�L\nLR��������&��4�u��@u��:�TP\n�TP\0\0\0\0\0\0\0\0\n��P\n��P@*�\n�TP%�`*���l	l	l	l	l	l	ll	ll����6J@c����� 1Ł�2\"`dL�`\\X��2��Ԁ����i�i�����&LP@u���:��P@*P@*P\n�T�\0�@*P\n��P\n���@UTP@UT�	�%�`K`K`&���M�\r�.@C`K`C`c�% !�1�9Hr`c����,�`\\X# 2)q���H\nLR�������&TP@u�P@u�P\n��P\n��P\n��P\n�T�T�T�T�*��lP@M��l	lP%�`K`K`K`K`C`K`C`K`cr$�� 1�@c���01Ɂ�R\"���02&��,�`Z��q���������\r0)0@��u���:�TP@*��\0�@u\0�@*P\n��P\n�TP@*�\n�TP`*��[6�l	l	l	o�	l	ll	lr����Hlr`cr$���� 1Ɂ`Z�# 2)�,R\"�E -0)HR�������������u����U@u��:�TP\n��P@*P\n�T�:��P\n��P@*P@UTP\n����	�&�&�������� %�!�%�!�re 1Ɂ@cr�90\"RdD�����2$X��E -HL\nRԀ� -0)H\nL\nL\nL\nL���4�� @u�P@*�@u\0�@u\0�@*P\n�T�*�T�*�TP@*�\n�*������r[6��-�-�-�@C���J@C�܀� \"R�9Hn@C`c����2$d�H��@\\dE .2Ԁ� -0)0-HR��i�J@R`4���i��������\0��@u��:�T�:�T�\0�\n�\0�@U\0�\n�TP@N@*��\\�M��[6�-�.@K`C��6�@C��69��1�@cr% 1�@c����2$dD���2F@d��� -HRԀ� -HL\nRԀ� )0)H\nL\nR��I��L��:���|@��:�T�:�T�\0�@*�@U\0�\n�@*���	���	�%�`K�����.@C���9@C��9�� 1�@D�9Hr�� 1�@d����2\"���@dR� -H��� -HR���J@Z�\r0)H\nL\nR�\\@:�����P\n��P@8�|@@@@@@\0�q\0q\0�P@*r6�\n�\' `K`\' %�%���9.@C`K`K��9@C`C`D�9Hln@c���HN@D�P?��',NULL);
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
INSERT INTO `vendas` VALUES (1,92.54,'2021-03-25','22:21:31','Administrador',0.00,100.00,7.46,'','Dinheiro','Concluída',1,'aberto'),(2,66.10,'2021-03-25','22:22:54','Administrador',0.00,70.00,3.90,'','Dinheiro','Concluída',2,'aberto'),(3,52.88,'2021-03-25','22:24:16','caixa',0.00,60.00,7.12,'','Dinheiro','Concluída',3,'aberto');
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
