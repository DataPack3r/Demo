CREATE DATABASE library;

USE library;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL
);

CREATE TABLE publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(50) NOT NULL
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100) NOT NULL,
    author_id INT,
    publisher_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);
