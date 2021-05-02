CREATE DATABASE wt_db;

CREATE USER 'admin' IDENTIFIED BY 'Password123#@!';

GRANT ALL PRIVILEGES ON wt_db.* TO 'Password123#@!'; 

CREATE TABLE jouets (id INTEGER NOT NULL, nom varchar(40) NOT NULL, prix INTEGER NOT NULL);

INSERT INTO jouets (nom, prix)
VALUE ('toupie', 5), ('train', 20), ('yo-yo', 4);
