CREATE DATABASE librarydb;
USE librarydb;
CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(100),
                       email VARCHAR(100) UNIQUE,
                       password VARCHAR(255)
);

CREATE TABLE books (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       title VARCHAR(100) NOT NULL,
                       author VARCHAR(50) NOT NULL,
                       category VARCHAR(50),
                       quantity INT NOT NULL
);
