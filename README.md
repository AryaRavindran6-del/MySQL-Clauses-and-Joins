# MySQL Assignment 2 -Clauses-and-Joins
SQL assignment demonstrating data querying, filtering, sorting, aggregation, grouping, and table joins using MySQL on an employee database.

**Project Overview**

This repository contains MySQL Assignment 2 – Clauses and Joins.

The project focuses on querying and analysing employee data using SQL. It demonstrates how to retrieve, filter, sort, group, aggregate, and combine data from multiple relational tables using MySQL.

The assignment uses an employee database consisting of three tables: Employees, Departments, and Location. The dataset contains 30 employee records, 13 departments, and 4 office locations.
- Retrieve unique values using DISTINCT.
- Rename output columns using aliases (AS).
- Filter records using WHERE and logical operators.
- Identify and update missing values using IS NULL and UPDATE.
- Sort and limit query results using ORDER BY and LIMIT.
- Perform calculations using aggregate functions.
- Summarise data using GROUP BY and HAVING.
- Combine related tables using INNER JOIN, LEFT JOIN, and RIGHT JOIN.
- Database: MySQL
- SQL Editor: MySQL Workbench
- Language: SQL
The project uses three relational tables:
Table	Description
Employees	Contains employee details such as name, gender, age, hire date, designation, department ID, location ID, and salary.
Departments	Stores department IDs and department names.
Location	Stores location IDs and office location names.
The tables are connected through Primary Key and Foreign Key relationships to maintain referential integrity.
The assignment covers the following SQL concepts:
Concept / Function	Purpose
DISTINCT	Retrieves unique salary values.
AS	Creates aliases for column names.
WHERE	Filters records based on conditions.
AND	Combines multiple filtering conditions.
IS NULL	Identifies missing values.
UPDATE	Modifies existing records.
ORDER BY	Sorts query results.
ASC / DESC	Sorts data in ascending or descending order.
LIMIT	Restricts the number of returned records.
SUM()	Calculates the total salary in the Finance department.
MIN()	Finds the minimum employee age.
MAX()	Identifies the maximum salary for each location.
AVG()	Calculates average salaries and employee ages.
LIKE	Searches designations containing the word 'Analyst'.
COUNT()	Counts employees in each department.
GROUP BY	Groups records for aggregate calculations.
HAVING	Filters grouped results based on aggregate conditions.
INNER JOIN	Retrieves matching records from related tables.
LEFT JOIN	Retrieves all departments, including those without employees.
RIGHT JOIN	Retrieves all locations, including those without assigned employees.
1. Database and Table Creation: Created the employee database and established the Employees, Departments, and Location tables with appropriate constraints.
2. Data Insertion: Used the provided SQL INSERT statements to populate the three tables with employee, department, and location records.
3. Data Retrieval: Used SELECT and DISTINCT to retrieve employee information and unique salary values.
4. Data Filtering and Updating: Applied WHERE, logical operators, and IS NULL to filter records and identify missing designations. Updated the missing designation to 'Data Scientist'.
5. Sorting and Limiting: Used ORDER BY and LIMIT to arrange employee records and retrieve the first five employees hired in 2018.
6. Aggregate Analysis: Applied SUM(), MIN(), MAX(), and AVG() to calculate salary and age-related metrics.
7. Grouping and Filtering: Used GROUP BY and HAVING to analyse department-wise employee counts, location-wise salary information, and designation-wise average salaries.
8. Joining Tables: Implemented INNER JOIN, LEFT JOIN, and RIGHT JOIN to retrieve related information across the three tables.
9. Query Execution and Verification: Executed the queries in MySQL Workbench and reviewed the resulting output.
- Retrieved distinct salary values from the employee dataset.
- Identified employees earning more than ₹50,000 who were hired before January 2016.
- Updated the missing designation of an employee.
- Calculated the total salary expenditure for the Finance department.
- Identified the minimum employee age.
- Analysed maximum salaries across different locations.
- Calculated average salaries for designations containing 'Analyst'.
- Identified departments with fewer than three employees.
- Analysed locations where female employees have an average age below 30.
- Retrieved employee, department, and location information using SQL joins.
- MySQL Assignment 2 - Clauses and Joins.sql – SQL script containing database setup, data insertion, and assignment queries.
- README.md – Project overview, objectives, SQL concepts, and workflow documentation.
This assignment provided practical experience in querying relational databases using MySQL. By applying SQL clauses, aggregate functions, grouping techniques, and joins, the project demonstrates how employee data can be retrieved, organised, and analysed efficiently.

It also strengthened my understanding of relational database concepts, data manipulation, and SQL-based data analysis as part of my journey in AI-Driven Data Analytics.
Course: Program in AI-Driven Data Analytics
Assignment: MySQL Assignment 2 – Clauses and Joins
