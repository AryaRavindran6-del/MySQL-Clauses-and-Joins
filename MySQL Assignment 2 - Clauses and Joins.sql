CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
ALTER TABLE Employees
ADD COLUMN email VARCHAR(255);
ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(255);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100) NOT NULL,

    PRIMARY KEY (department_id),

    UNIQUE (department_name)
);
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL,

    PRIMARY KEY (location_id),

    UNIQUE (location)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT NOT NULL,
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    PRIMARY KEY (employee_id),

    CHECK (age >= 18),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

USE employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);
select distinct salary from Employees;
select age as Employee_Age, salary as Employee_Salary from Employees;
select * from Employees where salary > 50000 and hire_date < '2016-01-01';
select * from Employees where designation is NULL;
update Employees set designation = 'Data Scientist' where employee_id = 5004;
SELECT employee_id, employee_name, designation
FROM employees
WHERE employee_id = 5004;
select * from Employees order by department_id asc, salary desc;
select * from Employees where hire_date >= '2018-01-01' and hire_date < '2019-01-01' order by hire_date asc limit 5;
select sum(e.salary) as Total_Finance_Salary from Employees e inner join departments d on e.department_id = d.department_id where d.department_name = 'Finance';
select min(age) as Minimum_Employee_Age from Employees;
select l.location, max(e.salary) as Maximum_Salary from location l inner join employees e on l.location_id = e.location_id group by l.location_id,l.location;
select designation, avg(salary) as Average_Salary from Employees where designation like '%Analyst%' group by designation;
select d.department_id, d.department_name, count(e.employee_id) as Employee_Count from departments d left join employees e on d.department_id = e.department_id 
group by d.department_id, d.department_name having count(e.employee_id) < 3;
select l.location, avg(e.age) as Average_Female_Age from location l inner join Employees e on l.location_id = e.location_id where e.gender = 'F' 
group by l.location_id, l.location having avg(e.age) < 30;
select e.employee_name, e.designation, d.department_name from Employees e inner join departments d on e.department_id = d.department_id;
select d.department_id, d.department_name, count(e.employee_id) as Total_Employees from departments d left join Employees e on d.department_id = e.department_id 
group by d.department_id, d.department_name;
select l.location, e.employee_name from Employees e right join location l on e.location_id = l.location_id;
