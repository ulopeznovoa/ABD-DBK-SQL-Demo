DROP DATABASE IF EXISTS partition_testing;
CREATE DATABASE partition_testing;
USE partition_testing;

CREATE TABLE employees  (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(25) NOT NULL,
    lname VARCHAR(25) NOT NULL,
    store_id INT NOT NULL,
    department_id INT NOT NULL
)
    PARTITION BY RANGE(id)  (
        PARTITION p0 VALUES LESS THAN (5),
        PARTITION p1 VALUES LESS THAN (10),
        PARTITION p2 VALUES LESS THAN (15),
        PARTITION p3 VALUES LESS THAN MAXVALUE
);

INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Bob', 'Taylor', 3, 2); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Frank', 'Williams', 1, 2);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Ellen', 'Johnson', 3, 4); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Jim', 'Smith', 2, 4);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Mary', 'Jones', 1, 1); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Linda', 'Black', 2, 3);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Ed', 'Jones', 2, 1); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('June', 'Wilson', 3, 1);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Andy', 'Smith', 1, 3); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Lou', 'Waters', 2, 4);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Jill', 'Stone', 1, 4); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Roger', 'White', 3, 2);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Howard', 'Andrews', 1, 2); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Fred', 'Goldberg', 3, 3);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Barbara', 'Brown', 2, 3); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Alice', 'Rogers', 2, 2);
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Mark', 'Morgan', 3, 3); 
INSERT INTO employees(fname, lname, store_id, department_id) VALUES ('Karen', 'Cole', 3, 2);
