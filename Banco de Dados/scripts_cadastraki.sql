-- MySQL Script generated by MySQL Workbench 
-- Model: New Model    Version: 1.0 
-- MySQL Workbench Forward Engineering 
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, 
  unique_checks=0;SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, 
  foreign_key_checks=0;SET @OLD_SQL_MODE=@@SQL_MODE, 
  sql_mode='TRADITIONAL,ALLOW_INVALID_DATES'; 
-- ----------------------------------------------------- 
-- Schema cadastraki 
-- ----------------------------------------------------- 
-- ----------------------------------------------------- 
-- Schema cadastraki 
-- -----------------------------------------------------
CREATE SCHEMA 
IF NOT EXISTS `cadastraki` DEFAULT character 
SET utf8 ;USE `cadastraki` ; 
-- ----------------------------------------------------- 
-- Table `cadastraki`.`Usuario` 
-- -----------------------------------------------------
CREATE TABLEIF NOT EXISTS `cadastraki`.`usuario` ( `idusuario` int NOT NULL auto_increment, 
                                                   `nome` text NULL, 
												   `senha` text NULL, 
												   `email` text NULL, 
												   PRIMARY KEY (`idusuario`)) 
						   engine = innodb;
-- ----------------------------------------------------- 
-- Table `cadastraki`.`Estabelecimento` 
-- -----------------------------------------------------
CREATE TABLEIF NOT EXISTS `cadastraki`.`estabelecimento` ( `idestabelecimento` int NOT NULL auto_increment, 
                                                           `nome` text NULL, 
														   `cidade` text NULL,
														   `endereco` text NULL, 
														   `cep` varchar(20) NULL, 
														   `idusuarioestabelecimento` int NOT NULL, 
														   `bairro` text NULL,
														   `uf` char(2) NULL,
														   PRIMARY KEY (`idestabelecimento`),
														   INDEX `idusuario_idx` (`idusuarioestabelecimento` ASC), 
														   CONSTRAINT `idusuario` FOREIGN KEY (`idusuarioestabelecimento`) REFERENCES `cadastraki`.`usuario` (`idusuario`) ON
DELETE no action 
ON 
UPDATE no action) engine = innodb; 
-- ----------------------------------------------------- 
-- Table `cadastraki`.`tokens` 
-- -----------------------------------------------------
CREATE TABLEIF NOT EXISTS `cadastraki`.`tokens` ( `token` mediumtext NULL) 
engine = innodb;SET sql_mode=@OLD_SQL_MODE;
SET foreign_key_checks=@OLD_FOREIGN_KEY_CHECKS;
SET unique_checks=@OLD_UNIQUE_CHECKS;
--------------------------------------------------------
----- Insert do usuário------------------------------
------ cadastrar aqui o email que deseja para enviar o token --------------
INSERT INTO USUARIO(EMAIL,
                    NOME,
					SENHA)
            VALUES("cadastraki@gmail.com",
                   "admin",
                   "admin");
