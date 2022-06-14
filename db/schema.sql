DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE departments (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dep_name VARCHAR(30) NOT NULL 
);


CREATE TABLE roles (
role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30) NOT NULL,
salary INT NOT NULL,
departments_id INT, FOREIGN KEY (departments_id) REFERENCES departments(id)

    
);

CREATE TABLE employees (

id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
empl_first VARCHAR(30) NOT NULL,
empl_last VARCHAR(30) NOT NULL,
manager VARCHAR(60),
empl_role INT,
FOREIGN KEY (empl_role) REFERENCES roles(role_id)

);