CREATE TABLE AccountInformation (
    idAccountInformation int NOT NULL  AUTO_INCREMENT,
    email VARCHAR(50),
    fullName VARCHAR(50) NOT NULL,
    accountNumber VARCHAR(20) NOT NULL,
    dateOfBirth DATE,
    createAt DATETIME NOT NULL ,
    PRIMARY KEY (idAccountInformation)
) ENGINE = InnoDB;

Drop table  AccountInformation;

DESC  AccountInformation;


INSERT INTO AccountInformation(fullName, accountNumber) VALUES("hasan almunawar", 82269030054);
INSERT INTO AccountInformation(fullName, accountNumber) VALUES("almunarr", 82345246423);

SELECT accountNumber FROM AccountInformation WHERE accountNumber = 82269030054;

SELECT idAccountInformation FROM AccountInformation WHERE fullName = 'dodi' & AccountInformation.dateOfBirth = 2000-01-21;

SELECT  * FROM AccountInformation;

ALTER table AccountInformation
add  constraint fk_information_user
foreign key (accountNumber) references Account(idAccountNumber) ;

ALTER TABLE AccountInformation
    DROP FOREIGN KEY fk_information_user;

ALTER TABLE AccountInformation
ADD CONSTRAINT fk_information_user
FOREIGN KEY (accountNumber)
REFERENCES Account(idAccountNumber)
ON DELETE CASCADE
ON UPDATE CASCADE;


SELECT * FROM AccountInformation As acI
JOIN Account AS a ON (acI.accountNumber = a.idAccountNumber);

SHOW TABLES ;

ALTER TABLE AccountInformation
DROP COLUMN accountNumber;

ALTER TABLE AccountInformation
ADD COLUMN createdAt DATETIME NOT NULL;

SELECT idAccountInformation FROM AccountInformation WHERE fullName = & createAt = ;
