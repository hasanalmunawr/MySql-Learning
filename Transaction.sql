CREATE TABLE Transaction (
    idTransaction INT(11) NOT NULL ,
    accountNumber VARCHAR(20) NOT NULL ,
    transactionType VARCHAR(20) NOT NULL ,
    amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    transactionDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idTransaction)
) ENGINE = InnoDb;

DESC  Transaction;

INSERT INTO Transaction(idTransaction, accountNumber, transactionType) VALUES (1, 82269030054, 'gie');

ALTER table Transaction
add  constraint fk_transaction_user
foreign key (accountNumber) references Account(accountNumber) ;

SELECT * FROM Transaction AS t
JOIN Account AS a ON (t.accountNumber = idAccountNumber);
