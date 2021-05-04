CREATE DATABASE wt_db;

CREATE USER 'admin'@'172.16.1.3' IDENTIFIED BY 'Password123#@!';

GRANT ALL PRIVILEGES ON wt_db.* TO 'admin'@'172.16.1.3'; 

CREATE TABLE jouets (id INTEGER NOT NULL AUTO_INCREMENT, nom varchar(40) NOT NULL, prix INTEGER NOT NULL, CONSTRAINT pk_jouets PRIMARY KEY(id));

INSERT INTO jouets (nom, prix)
VALUE ('toupie', 5), ('train', 20), ('yo-yo', 4);
