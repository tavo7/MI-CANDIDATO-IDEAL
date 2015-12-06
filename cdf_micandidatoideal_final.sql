SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `cdf_micandidatoideal_borrar` ;
CREATE SCHEMA IF NOT EXISTS `cdf_micandidatoideal_borrar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `cdf_micandidatoideal_borrar` ;

-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_candidato`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_candidato` (
  `cdf_candidato_id` INT NOT NULL AUTO_INCREMENT ,
  `cdf_candidato_nombre` VARCHAR(45) NOT NULL ,
  `cdf_candidato_partidopolitico` VARCHAR(45) NOT NULL ,
  `cdf_candidato_estado` VARCHAR(45) NULL ,
  PRIMARY KEY (`cdf_candidato_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_sector`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_sector` (
  `cdf_sector_id` INT NOT NULL AUTO_INCREMENT ,
  `cdf_sector_codigo` VARCHAR(20) NULL ,
  `cdf_sector_nombre` VARCHAR(45) NOT NULL ,
  `cdf_sector_estado` VARCHAR(100) NULL ,
  PRIMARY KEY (`cdf_sector_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_propuesta`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_propuesta` (
  `cdf_candidato_candidato` INT NOT NULL ,
  `cdf_sector_sector` INT NOT NULL ,
  `cdf_propuesta_descripcion` VARCHAR(300) NOT NULL ,
  INDEX `fk_tb_propuesta_tb_candidato_idx` (`cdf_candidato_candidato` ASC) ,
  INDEX `fk_tb_propuesta_tb_sector1_idx` (`cdf_sector_sector` ASC) ,
  PRIMARY KEY (`cdf_candidato_candidato`, `cdf_sector_sector`) ,
  CONSTRAINT `fk_tb_propuesta_tb_candidato`
    FOREIGN KEY (`cdf_candidato_candidato` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_candidato` (`cdf_candidato_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_propuesta_tb_sector1`
    FOREIGN KEY (`cdf_sector_sector` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_sector` (`cdf_sector_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_usuario` (
  `cdf_usuario_id` INT NOT NULL AUTO_INCREMENT ,
  `cdf_usuario_alias` VARCHAR(100) NOT NULL ,
  `cdf_usuario_ciudad` VARCHAR(60) NOT NULL ,
  `cdf_usuario_edad` INT NOT NULL ,
  PRIMARY KEY (`cdf_usuario_id`) ,
  UNIQUE INDEX `alias_usuario_UNIQUE` (`cdf_usuario_alias` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_valoracion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_valoracion` (
  `cdf_valoracion_id` INT NOT NULL AUTO_INCREMENT ,
  `cdf_valoracion_valor` VARCHAR(20) NULL ,
  `cdf_valoracion_fechavaloracion` VARCHAR(45) NULL ,
  `cdf_valoracion_horavaloracion` VARCHAR(45) NULL ,
  `cdf_usuario_usuario` INT NOT NULL ,
  `cdf_candidato_candidato` INT NOT NULL ,
  `cdf_sector_sector` INT NOT NULL ,
  PRIMARY KEY (`cdf_valoracion_id`) ,
  INDEX `fk_cdf_valoracion_cdf_candidato1_idx` (`cdf_candidato_candidato` ASC) ,
  INDEX `fk_cdf_valoracion_cdf_sector1_idx` (`cdf_sector_sector` ASC) ,
  INDEX `fk_cdf_valoracion_cdf_usuario1_idx` (`cdf_usuario_usuario` ASC) ,
  CONSTRAINT `fk_cdf_valoracion_cdf_candidato1`
    FOREIGN KEY (`cdf_candidato_candidato` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_candidato` (`cdf_candidato_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cdf_valoracion_cdf_sector1`
    FOREIGN KEY (`cdf_sector_sector` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_sector` (`cdf_sector_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cdf_valoracion_cdf_usuario1`
    FOREIGN KEY (`cdf_usuario_usuario` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_usuario` (`cdf_usuario_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cdf_micandidatoideal_borrar`.`cdf_puntuacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cdf_micandidatoideal_borrar`.`cdf_puntuacion` (
  `cdf_puntuacion_id` INT NOT NULL AUTO_INCREMENT ,
  `cdf_candidato_candidato` INT NOT NULL ,
  `cdf_puntuacion_fecha` VARCHAR(45) NOT NULL ,
  `cdf_puntuacion_hora` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`cdf_puntuacion_id`) ,
  INDEX `fk_cdf_bitacora_cdf_candidato1_idx` (`cdf_candidato_candidato` ASC) ,
  CONSTRAINT `fk_cdf_bitacora_cdf_candidato1`
    FOREIGN KEY (`cdf_candidato_candidato` )
    REFERENCES `cdf_micandidatoideal_borrar`.`cdf_candidato` (`cdf_candidato_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `cdf_micandidatoideal_borrar` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
