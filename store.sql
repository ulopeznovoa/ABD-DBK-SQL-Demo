
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

INSERT INTO customer (customer_id, first_name, last_name, email, phone) VALUES
  (1,'John','Doe','john@example.com','555-1111'),
  (2,'Jane','Smith','jane@example.com','555-2222'),
  (3,'Ane','Agirre','ane.agirre@example.com','555-3333'),
  (4,'Mikel','Etxebarria','mikel.etx@example.com','555-4444'),
  (5,'Laura','García','laura.garcia@another.com','555-5555'),
  (6,'Pedro','Ruiz','pedro.ruiz@example.com','555-6666');

INSERT INTO employee (employee_id, first_name, last_name, position) VALUES
  (1,'Alice','Brown','Salesperson'),
  (2,'Bob','Wilson','Manager'),
  (3,'Carol','Lopez','Salesperson'),
  (4,'David','Nguyen','Salesperson'),
  (5,'Eva','Martinez','Cashier'),
  (6,'Frank','Connor','Warehouse');

INSERT INTO product (product_id, name, price) VALUES
  (1,'Laptop',999.99),
  (2,'Smartphone',699.50),
  (3,'Headphones',49.90),
  (4,'Tablet',399.00),
  (5,'Smartwatch',199.99),
  (6,'Keyboard',29.95),
  (7,'Mouse',24.50),
  (8,'Monitor 24"',149.00),
  (9,'External SSD 1TB',119.00);

INSERT INTO sale (sale_id, customer_id, employee_id, product_id, quantity, sale_date) VALUES
  (1,1,1,1,1,'2026-01-20'),
  (2,2,2,3,2,'2026-01-21'),
  (3,3,3,2,1,'2026-01-25'),
  (4,4,4,5,3,'2026-01-28'),
  (5,1,2,4,2,'2026-02-02'),
  (6,6,3,7,8,'2026-02-05');
