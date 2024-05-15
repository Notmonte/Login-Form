DROP DATABASE IF EXISTS logindb; //iF there is a database on the server with the same name it will delete it 
CREATE DATABASE logindb;
USE logindb;

CREATE TABLE user (
    user_id MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
    fName VARCHAR(20) NOT NULL,
    lName VARCHAR(20) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    username VARCHAR(20) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_user_id PRIMARY KEY (user_id)
);