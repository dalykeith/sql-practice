-- 17th Feb 2017

--LAB EXERCISE 1

-- 1) Your first task is to determine the structure of the DEPARTMENTS table and its contents.
DESCRIBE departments;
SELECT * FROM departments;

-- 2) You need to determine the structure of the EMPLOYEES table.
DESCRIBE employees;

-- 3) The HR department wants a query to display the last_name, job_code, hire_date and
-- employee_number for each employee number appearing first. Provide an alias
-- START_DATE for the hire_date column.
SELECT last_name, job_id, hire_date AS
START_DATE
FROM employees;

-- 4) The HR department needs a query to display all unique job codes from the EMPLOYEES
-- table.
SELECT DISTINCT job_id
FROM employees;

-- 5) Due to budget issues, the HR department needs a report that displays the last name and salary
-- of employees earning more than €12,000. 
-- Database Management [2016_17]
-- 2 | P a g e
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

-- 6) Create a report that displays the last name and employee number for employee number 176.
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

-- 7) The HR department needs to find high-salary and low-salary employees. Run a query to
-- display the last name and salary for all employees whose salary is not in the range €5,000 and
-- €12,000.
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- 8) Create a report to display the last name, current_job id and start date for the employees with
-- the last names of Matos and Taylor. Order the query in ascending order by start date.
SELECT last_name, current_job_id, hire_date
FROM employees
WHERE last_name IN(“Matos”, “Taylor”)
ORDER BY hire_date;

-- 9) Display the last name and department number of all employees in departments 20 or 50 in
-- ascending alphabetical order by name.
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name ASC;

-- 10) List the last name and salary of employees who earn between €5,000 and €12,000 and are in
-- department 20 or 50. Label the columns Employee, Monthly Salary respectively.
SELECT last_name AS “Employee”, salary AS
“Monthly Salary”
FROM employees
WHERE department_id IN (20,50)
AND salary BETWEEN 5000 AND 12000;

-- 11) The HR department needs a report that displays the last name and hire date for all employees
-- who were hired in 1998.
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE ‘1998%’;


-- 12) Create a report to display the first name, last name and job title of all employees who do not
-- report to a manager.
SELECT first_name, last_name , job_id
FROM employees
WHERE manager_id IS NULL;


-- 13) Display the last name of all employees who have both an a and e in their last name.
SELECT last_name
FROM employees
WHERE last_name LIKE ‘%a’
AND last-name LIKE ‘%e’;


-- 14) Display the last name, job and salary for all employees whose job is sales rep or store clerk
-- and whose salary is not equal to €2,500, €3,500 or €7,000
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN(‘SA_REP’, ‘ST_CLERK’)
AND salary NOT IN(2500,3500,7000);



