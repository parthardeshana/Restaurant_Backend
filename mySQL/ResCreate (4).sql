-- MySQL Workbench Forward Engineering
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
flush privileges;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema restaurantDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema restaurantDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `restaurantDB` DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci; ;
USE `restaurantDB` ;

-- -----------------------------------------------------
-- Table `restaurantDB`.`cuisine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`cuisine` (
  `cuisine_id` INT NOT NULL,
  `cuisineName` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cuisine_id`))
ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8mb4
-- COLLATE = utf8mb4_0900_ai_ci;
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- -----------------------------------------------------
-- Table `restaurantDB`.`region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`region` (
  `region_id` INT NOT NULL,
  `regionName` VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (`region_id`))
ENGINE = InnoDB
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- DEFAULT CHARACTER SET = utf8mb4
-- COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `restaurantDB`.`restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`restaurant` (
  `restaurant_id` INT NOT NULL AUTO_INCREMENT,
  `restaurantName` VARCHAR(200) NOT NULL,
  `Address` VARCHAR(200) NOT NULL,
  `openingHours` VARCHAR(100) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `restaurantURL` VARCHAR(200) NULL DEFAULT NULL,
  `Photo` VARCHAR(200) NULL DEFAULT NULL,
  `telephoneNumber` VARCHAR(200) NULL DEFAULT NULL,
  `Photo1` VARCHAR(200) NULL DEFAULT NULL,
  `Photo2` VARCHAR(200) NULL DEFAULT NULL,
  `region_id` INT NOT NULL,
  `cuisine_id` INT NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  INDEX `region_id_idx` (`region_id` ASC) VISIBLE,
  INDEX `cuisine_id_idx` (`cuisine_id` ASC) VISIBLE,
  CONSTRAINT `cuisine_id`
    FOREIGN KEY (`cuisine_id`)
    REFERENCES `restaurantDB`.`cuisine` (`cuisine_id`),
  CONSTRAINT `region_id`
    FOREIGN KEY (`region_id`)
    REFERENCES `restaurantDB`.`region` (`region_id`))
ENGINE = InnoDB
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- -----------------------------------------------------
-- Table `restaurantDB`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(200) NOT NULL,
  `LastName` VARCHAR(100) NOT NULL,
  `Password` VARCHAR(60) NOT NULL,
  `Gender` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(100) NULL DEFAULT NULL,
  `Email` VARCHAR(150) NOT NULL,
  `mobileNumber` INT NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- -----------------------------------------------------
-- Table `restaurantDB`.`favourite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`favourite` (
  `id` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `restaurant_id_idx` (`restaurant_id` ASC) VISIBLE,
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `Favrestaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `restaurantDB`.`restaurant` (`restaurant_id`),
  CONSTRAINT `Favuser_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `restaurantDB`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- -----------------------------------------------------
-- Table `restaurantDB`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurantDB`.`review` (
  `review_id` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(250) NULL DEFAULT NULL,
  `PostedTime` VARCHAR(200) NULL DEFAULT NULL,
  `Rating` INT NOT NULL,
  `user_id` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  PRIMARY KEY (`review_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  INDEX `restaurant_id_idx` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `restaurantDB`.`restaurant` (`restaurant_id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `restaurantDB`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
