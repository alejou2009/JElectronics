-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jelectronics
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jelectronics
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jelectronics` DEFAULT CHARACTER SET utf8mb3 ;
USE `jelectronics` ;

-- -----------------------------------------------------
-- Table `jelectronics`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jelectronics`.`productos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(80) NOT NULL,
  `nombre` VARCHAR(80) NOT NULL,
  `precio` INT(15) NOT NULL,
  `descripcion` VARCHAR(255) NOT NULL,
  `disponible` INT(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `tipo_UNIQUE` (`tipo` ASC) VISIBLE,
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jelectronics`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jelectronics`.`usuarios` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(80) NOT NULL,
  `apellido` VARCHAR(80) NOT NULL,
  `cedula` INT(15) NOT NULL,
  `contrasena` VARCHAR(80) NOT NULL,
  `correo` VARCHAR(80) NOT NULL,
  `rol` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `correo_UNIQUE` (`correo` ASC) VISIBLE,
  UNIQUE INDEX `cedula_UNIQUE` (`cedula` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jelectronics`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jelectronics`.`ventas` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `precio` INT(15) NOT NULL,
  `cliente` VARCHAR(80) NOT NULL,
  `correo` VARCHAR(80) NOT NULL,
  `idproducto` INT(15) NOT NULL,
  `producto` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
