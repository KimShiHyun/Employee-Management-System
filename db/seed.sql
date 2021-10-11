DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

--- Department Table ---
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);
--- Role Table ---
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
--- Employee Table ---
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);

--- Department Seeds ---
INSERT INTO department (name)
VALUES ("Management"),
("Software"),
("Human Resources"),
("Operations");

--- Role Seeds ---
INSERT INTO role (title, salary, department_id)
VALUES ("President", 300000.00, 1),
("Senior Engineer", 80000.00, 1),
("Mid-Level Engineer", 60000.00, 1),
("Entry-Level Engineer", 55000.00, 2),
("IT Engineer", 30000.00, 2),
("Operations Associate", 40000.00, 4),
("Operations Lead", 50000.00, 4),
("Director of Human Resources", 100000.00, 3),
("Recruiter", 50000.00, 3);

--- Employee Seeds ---
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Kim", 1, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Benjamin", "Skrill", 7, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Patrick", "Star", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Alex", "Rodriguez", 8, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Bob", "Saget", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lucas", "Brown", 3, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sarah", "Muller", 9, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Alex", "Pham", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jenna", "Lee", 5, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Karen", "Mangea", 6, 2);


SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;