DROP DATABASE db; 
CREATE DATABASE db; 
USE db;

CREATE TABLE `people` (
    id integer not null auto_increment,
    name varchar(200),
    primary key(id)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

/* delete all records */ 
DELETE FROM people;

/* insert records */
INSERT INTO people (name) VALUES ('Fulano');
INSERT INTO people (name) VALUES ('Ciclano');
INSERT INTO people (name) VALUES ('Fulano 2');
INSERT INTO people (name) VALUES ('Ciclano 2');