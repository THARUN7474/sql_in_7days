SHOW databases;
CREATE DATABASE IF NOT EXISTS tharunblog;
USE tharunblog;
select database();

CREATE TABLE employee(
	empId INT AUTO_INCREMENT,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    salary INT NOT NULL DEFAULT 100000,
    age INT NOT NULL,
    startDate INT NOT NULL,
	PRIMARY KEY (empId) 
);

CREATE TABLE employee1(
	EID int auto_increment,
    fisrtname varchar(50) NOT NULL,
    lastname varchar(50) NOT NULL,
    age INT NOT NULL,
    phonenumber INT,
    salary INT,
    location varchar(50) NOT NULL,
    primary key (EID) -- mostly used when composite ids are involved-- 
);

DESC employee;
drop table employee;

insert into employee1(fisrtname,lastname,age,phonenumber,salary,location) values ("tharun","reddy",20,123,200000,"india");

select * from employee1;
select * from employee;

INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ayush", "Raj", 1000000, 34, 22);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ashish", "Shah", 34000, 18, 24);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ayush", "Topper", 4200140, 14, 27);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Vijay", "Ganesh", 540004, 54, 12);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Divyanshu", "Chutiya", 214000, 87, 25);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Abhay", "Sharma", 2404400, 32, 7);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Deepak", "Sharma", 100002, 32, 7);

-- give me the name of employee who's having salary more than 1 lakh
SELECT * FROM employee WHERE salary >= 1000000 || firstName = "Ashish";
-- give me the report of employees who's having age more than 25: this is the part of data retrival
SELECT * FROM employee WHERE age > 25;

SET SQL_SAFE_UPDATES = 1;
-- now it's time for updation part
-- update the last name of ashish with shah to shahu
update employee set firstname = "tharun" where empid = 3; -- here when in case of primary key we can update easily but other cases we need set sql_safe_updates = 1 then work on it
UPDATE employee SET lastName = "ShahShah" where empId = 2;
UPDATE employee SET lastName = "Sharma" where empId = 1;
UPDATE employee SET lastName = "Shah" where firstName = 'Ayush';

DELETE FROM employee;
DELETE FROM employee where empId = 2;
SELECT * FROM employee;
DESC employee;
SHOW TABLES;
DROP TABLE employee;

show tables;