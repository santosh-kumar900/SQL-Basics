/* Q1. Create a New Database and  Table for Employees
Task: Create a new database named company_db and Create a table named employees with the following
columns:
ANSWER 1.
 */

DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;
DROP TABLE IF EXISTS employees;
CREATE TABLE  employees(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE);


/*Q2. Insert Data into Employees Table
Task: Insert the following sample records into the employees table. 
ANSWER 2.
*/
INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
		(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
        (102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
        (103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
        (104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
        (105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

SELECT * FROM employees;


/*Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
Hint: Use the ORDER BY clause on the salary column. 
ANSWER 3.
*/

SELECT * FROM employees 
order by salary ASC;

/* Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low) */
SELECT * FROM employees 
order by department ASC, salary DESC;


/* Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
ANSWER
*/
SELECT * FROM employees 
WHERE department = 'IT'
ORDER BY hire_date DESC;

/* Q6. Create and Populate a Sales Table
Task: Create a table sales to track sales data: */

CREATE TABLE sales(
sale_id INT PRIMARY KEY,
customer_name VARCHAR(50),
amount INT,
sale_date DATE);

INSERT INTO sales( sale_id, customer_name, amount, sale_date) VALUES
			(1, 'Aditi', 1500, '2024-08-01'),
            (2, 'Rohan', 2200, '2024-08-03'),
            (3, 'Aditi', 3500, '2024-09-05'),
            (4, 'Meena', 2700, '2024-09-15'),
            (5, 'Rohan', 4500, '2024-09-25');


/* Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
Hint: Use ORDER BY amount DESC
ANSWER 7.
*/

SELECT * FROM sales 
ORDER BY amount DESC;

/*Q8. Show All Sales Made by Customer “Aditi”
Hint: Use WHERE customer_name = 'Aditi'.
ANSWER 8.
*/

SELECT * FROM sales 
WHERE customer_name = 'Aditi';

/* Q9. What is the Difference Between a Primary Key and a Foreign Key? 
Answer 9 : A Primary Key uniquely identifies each record in its own table and cannot contain null values.
A Foreign Key links two tables together by referencing the primary key of another table.
While a table can have only one primary key, it can contain multiple foreign keys.
Primary keys ensure each row is distinct, while foreign keys maintain consistency between related datasets.
*/

/* Q10. What Are Constraints in SQL and Why Are They Used?
Answer 10. SQL Constraints are predefined rules applied to table columns to limit the types of data that can be entered.
 They act as "guardians" of a database by ensuring that all stored information remains accurate, reliable, and consistent. 

Why Constraints are Used
Data Integrity: They prevent invalid or corrupt data from being inserted.
Accuracy: They ensure that data follows specific business logic (e.g., a "Price" column cannot have negative numbers).
Referential Integrity: They maintain valid links between related tables.
Automation: Rules are enforced by the database itself, reducing the need for manual validation code in applications. 

*/
