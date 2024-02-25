CREATE TABLE AccountFullDetail (
    accountNumber VARCHAR(20) NOT NULL,
    accountInformation INT NOT NULL ,
    description TEXT
) ENGINE = InnoDB;

DROP TABLE  AccountFullDetail;

ALTER TABLE AccountFullDetail
ADD CONSTRAINT fk_idAccountNumber_user
FOREIGN KEY (accountNumber) REFERENCES Account(idAccountNumber);

ALTER TABLE AccountFullDetail
ADD CONSTRAINT fk_idAccountInformation_user
FOREIGN KEY (accountInformation) REFERENCES AccountInformation(idAccountInformation);

INSERT INTO AccountFullDetail(accountNumber, accountInformation) VALUES(82269030054,1);
INSERT INTO AccountFullDetail(accountNumber, accountInformation) VALUES(82345246423,2);
INSERT INTO AccountFullDetail(accountNumber, accountInformation) VALUES(45003096228,6);

SELECT acd.accountNumber, ai.fullName, a.balance FROM AccountFullDetail AS acd
JOIN Account AS a ON (acd.accountNumber = a.idAccountNumber)
JOIN AccountInformation AS ai ON (acd.accountInformation = ai.idAccountInformation)
WHERE accountNumber = 82269030054 ;

SELECT * FROm AccountFullDetail;

DESC AccountFullDetail;