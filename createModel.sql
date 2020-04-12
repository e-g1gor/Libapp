-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`books`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`books` ;

CREATE TABLE IF NOT EXISTS `mydb`.`books` (
  `idbooks` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(512) NOT NULL,
  PRIMARY KEY (`idbooks`),
  UNIQUE INDEX `idbooks_UNIQUE` (`idbooks` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`languages` ;

CREATE TABLE IF NOT EXISTS `mydb`.`languages` (
  `idlanguages` VARCHAR(2) NOT NULL,
  `lang` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`idlanguages`),
  UNIQUE INDEX `idlanguages_UNIQUE` (`idlanguages` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`i18n`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`i18n` ;

CREATE TABLE IF NOT EXISTS `mydb`.`i18n` (
  `idi18n` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `bookid` INT UNSIGNED NOT NULL,
  `langid` VARCHAR(2) NOT NULL,
  `name` VARCHAR(512) NOT NULL,
  PRIMARY KEY (`idi18n`),
  UNIQUE INDEX `idi18n_UNIQUE` (`idi18n` ASC) VISIBLE,
  INDEX `lang_idx` (`langid` ASC) VISIBLE,
  INDEX `book_idx` (`bookid` ASC) VISIBLE,
  CONSTRAINT `book`
    FOREIGN KEY (`bookid`)
    REFERENCES `mydb`.`books` (`idbooks`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `lang`
    FOREIGN KEY (`langid`)
    REFERENCES `mydb`.`languages` (`idlanguages`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS app;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'app' IDENTIFIED BY 'password';

GRANT ALL ON `mydb`.* TO 'app';