DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE employees (

empl_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
empl_first VARCHAR(30) NOT NULL,
empl_last VARCHAR(30) NOT NULL,
empl_role VARCHAR(30) NOT NULL, FOREIGN KEY (empl_role) REFERENCES roles(role_name),
empl_dep VARCHAR(30) NOT NULL, FOREIGN KEY (empl_dep) REFERENCES departments(dep_name),
emp_sal INT NOT NULL, FOREIGN KEY (empl_sal) REFERENCES roles(salary),
is_manager BOOLEAN NOT NULL


);


CREATE TABLE departments (

dep_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dep_name VARCHAR(30) NOT NULL,
manager VARCHAR(30) NOT NULL

    
);


CREATE TABLE roles (

role_name VARCHAR(30) NOT NULL,
salary INT NOT NULL
    
);


