---create a new table PETSALE and PET in a database

CREATE TABLE PETSALE (
    ID INTEGER NOT NULL,
    PET CHAR(20),
    SALEPRICE DECIMAL(6,2),
    PROFIT DECIMAL(6,2),
    SALEDATE DATE
    );
    
CREATE TABLE PET (
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    );

 ---Insert some records into the two newly created tables and show all the records of the two tables.
 
INSERT INTO PETSALE VALUES
    (1,'Cat',450.09,100.47,'2018-05-29'),
    (2,'Dog',666.66,150.76,'2018-06-01'),
    (3,'Parrot',50.00,8.9,'2018-06-04'),
    (4,'Hamster',60.60,12,'2018-06-11'),
    (5,'Goldfish',48.48,3.5,'2018-06-14');
    
INSERT INTO PET VALUES
    (1,'Cat',3),
    (2,'Dog',4),
    (3,'Hamster',2);
    
SELECT * FROM PETSALE;
SELECT * FROM PET;

---ALTER statement to add, delete, or modify columns in two of the existing tables

ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;

--- TRUNCATE statement to remove all rows from an existing table 

TRUNCATE TABLE PET IMMEDIATE;

SELECT * FROM PET;

---Remove all rows from the PET table and show the empty table

DROP TABLE PET;

SELECT * FROM PET;