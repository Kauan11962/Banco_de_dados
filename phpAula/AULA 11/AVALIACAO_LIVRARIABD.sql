/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.20-log : Database - livrariabd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`livrariabd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `livrariabd`;

/*Table structure for table `autores` */

DROP TABLE IF EXISTS `autores`;

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `nacionalidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `autores` */

insert  into `autores`(`id_autor`,`nome`,`nacionalidade`) values (1,'J.K. Rowling','Inglaterra'),(2,'George Orwell','Inglaterra'),(3,'Machado de Assis','Brasil'),(4,'Jane Austen','Inglaterra'),(5,'Gabriel García Márquez','Colombia');

/*Table structure for table `editoras` */

DROP TABLE IF EXISTS `editoras`;

CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `editoras` */

insert  into `editoras`(`id_editora`,`nome`,`cidade`) values (1,'J.K. Rowling','Inglaterra'),(2,'George Orwell','Inglaterra'),(3,'Machado de Assis','Brasil'),(4,'Jane Austen','Inglaterra'),(5,'Gabriel García Márquez','Colombia');

/*Table structure for table `livros` */

DROP TABLE IF EXISTS `livros`;

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  KEY `id_autor` (`id_autor`),
  KEY `id_editora` (`id_editora`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_editora`) REFERENCES `editoras` (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `livros` */

insert  into `livros`(`id_livro`,`titulo`,`ano_publicacao`,`id_autor`,`id_editora`) values (1,'Harry Potter e a Pedra Filosofal',1997,1,1),(2,'1984',1949,2,3),(3,'Dom Casmurro',1899,3,2),(4,'Orgulho e Preconceito',1813,4,3),(5,'Cem Anos de Solidão',1967,5,4),(6,'A Mão e a Luva',1874,3,2),(7,'Helena',1876,3,2),(8,'Dom Casmurro',1899,3,2),(9,'As Relíquias da Morte',1999,1,1);

/*Table structure for table `vendas` */

DROP TABLE IF EXISTS `vendas`;

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL AUTO_INCREMENT,
  `id_livro` int(11) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_livro` (`id_livro`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `vendas` */

insert  into `vendas`(`id_venda`,`id_livro`,`data_venda`,`quantidade`) values (1,1,'2023-01-15',50),(2,2,'2023-02-20',30),(3,3,'2023-03-10',20),(4,4,'2023-04-05',25),(5,5,'2023-05-01',40);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
