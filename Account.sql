SHOW TABLES ;

SELECT * FROM Account;

DESC Account;

ALTER TABLE Account
MODIFY balance DECIMAL(10,2) NOT NULL DEFAULT 0.00;

INSERT INTO Account(Account.idAccountNumber, pin, balance) VALUES (082269030054, 200423, 1000000);
INSERT INTO Account(Account.idAccountNumber, pin, balance) VALUES (82345246423, 199342, 500000);

ALTER TABLE Account
CHANGE COLUMN accountNumber idAccountNumber VARCHAR(20) NOT NULL;

UPDATE Account
SET balance = balance + 1200000
WHERE idAccountNumber = 45003096228;

USE project_java_ATM;

