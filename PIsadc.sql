-- MySQL Script generated by MySQL Workbench
-- Mon Nov 23 09:45:22 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Proponente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proponente` (
  `idProponente` INT NOT NULL AUTO_INCREMENT,
  `cpf/cnpjProponente` VARCHAR(25) NOT NULL,
  `nomeP` VARCHAR(100) NOT NULL,
  `rgP` VARCHAR(10) NOT NULL,
  `emailP` VARCHAR(100) NOT NULL,
  `telP` VARCHAR(11) NOT NULL,
  `endereço` TINYTEXT NOT NULL,
  `documentos` VARCHAR(45) NOT NULL,
  `dtNt` DATE NOT NULL,
  `nCasaP` VARCHAR(45) NOT NULL,
  `cepP` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProponente`, `cpf/cnpjProponente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Corretor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Corretor` (
  `idCorretor` INT NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(45) NOT NULL,
  `nomeCorretor` VARCHAR(100) NOT NULL,
  `emailCorretor` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idCorretor`, `senha`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
