
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`books`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'Oliver Twist');
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'A Christmas Carol');
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'David Copperfield');
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'Dombey and Son');
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'Stalky & Co.');
INSERT INTO `mydb`.`books` (`idbooks`, `name`) VALUES (DEFAULT, 'The Jungle Book');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`languages`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`languages` (`idlanguages`, `lang`) VALUES ('by', 'беларуская');
INSERT INTO `mydb`.`languages` (`idlanguages`, `lang`) VALUES ('pl', 'polish');
INSERT INTO `mydb`.`languages` (`idlanguages`, `lang`) VALUES ('ru', 'русский');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`i18n`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 1, 'ru', 'Оливер Твист');
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 1, 'pl', 'Oliver Twist');
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 1, 'by', 'Олiвер Твiст');
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 3, 'ru', 'Рождественская Песнь');
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 3, 'by', 'Дэйвід Копэрфілд');
INSERT INTO `mydb`.`i18n` (`idi18n`, `bookid`, `langid`, `name`) VALUES (DEFAULT, 5, 'ru', 'Сталки и Компания');

COMMIT;