
DROP DATABASE IF EXISTS store;
CREATE DATABASE store;
USE store;

CREATE TABLE customer (
  customer_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(150),
  phone VARCHAR(30)
);

CREATE TABLE employee (
  employee_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  position VARCHAR(100)
);

CREATE TABLE product (
  product_id INT NOT NULL PRIMARY KEY,
  name VARCHAR(200),
  price DECIMAL(10,2)
);

CREATE TABLE sale (
  sale_id INT NOT NULL PRIMARY KEY,
  customer_id INT,
  employee_id INT,
  product_id INT,
  quantity INT,
  sale_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO customer VALUES
(1,'John','Doe','john@example.com','555-1111'),
(2,'Jane','Smith','jane@example.com','555-2222');

INSERT INTO employee VALUES
(1,'Alice','Brown','Salesperson'),
(2,'Bob','Wilson','Manager');

INSERT INTO product VALUES
(1,'Laptop',999.99),
(2,'Smartphone',699.50),
(3,'Headphones',49.90);

INSERT INTO sale VALUES
(1,1,1,1,1,'2026-01-20'),
(2,2,2,3,2,'2026-01-21');
