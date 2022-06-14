DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE departments (

dep_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dep_name VARCHAR(30) NOT NULL  
);


CREATE TABLE roles (
role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30) NOT NULL,
role_dep VARCHAR(30) NOT NULL,
salary INT NOT NULL
    
);

CREATE TABLE employees (

empl_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
empl_first VARCHAR(30) NOT NULL,
empl_last VARCHAR(30) NOT NULL,
empl_title VARCHAR(30) NOT NULL, FOREIGN KEY (empl_title) REFERENCES roles(title),
empl_dep VARCHAR(30) NOT NULL, FOREIGN KEY (empl_dep) REFERENCES departments(dep_name),
empl_sal INT NOT NULL, FOREIGN KEY (empl_sal) REFERENCES roles(salary),
is_manager VARCHAR(30)

);