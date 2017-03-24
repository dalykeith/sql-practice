-- 17 March 2017
--LAB EXERCISE 3 


--QUESTION 1
-- Find the highest, lowest, sum and average salary of all employees. Label the columns
-- MAXIMUM, MINIMUM, SUM and AVERAGE respectively. Round your results to the
-- nearest whole number.
SELECT MAX(salary) AS MAXIMUM, AVG(salary) AS AVERAGE, SUM(salary) AS TOTAL, MIN(salary) AS MINIMUM FROM employees;

--QUESTION 2
-- Modify Question 1 to display the maximum, minimum,
-- sum and average salary for each job type.
SELECT current_job_id, MAX(salary) AS MAXIMUM, ROUND(AVG(salary)) AS AVERAGE, 
SUM(salary) AS TOTAL, MIN(salary) AS MINIMUM
FROM employees
GROUP BY current_job_id;

--QUESTION 3
-- Write a query to display the number of people with the
-- same job.
SELECT current_job_id, COUNT(current_job_id) AS jobs
FROM employees
GROUP BY current_job_id;

--QUESTION 4
-- Determine the number of managers without listing them.
-- Label the column Number of Managers.
SELECT COUNT(current_job_id) AS "Number of managers"
FROM employees
WHERE current_job_id LIKE "%MGR%" OR current_job_id LIKE "%MAN%";

--QUESTION 5
-- Find the difference between the highest and lowest salaries. Label the column
-- DIFFERENCE.
SELECT MAX(salary) - MIN(salary) AS DIFFERENCES
FROM employees;

--QUESTIUON 6
-- Create a report to display the manager number and the salary of the
-- lowest-paid employee for that manager. Exclude anyone whose
-- manager is not known. Exclude any groups where the minimum
-- salary is $6,000 or less. Sort the output in descending order of
-- salary.
SELECT reports_to, MIN(salary)
FROM employees
WHERE salary <= 6000 AND reports_to IS NOT NULL
-- WHERE reports_to IS NOT NULL
GROUP BY reports_to
--HAVING MIN(salary)
ORDER BY MIN(salary)DESC;
--ORDER BY 2 DESC;


-- QUESTION 7. 
-- CHALLENGE: Create a query that will display the total number of employees and, of
-- that total, the number of employees hired in 1995, 1996, 1997 and 1998. Create
-- appropriate column headings. (Hint: This is a cross tab query- look up sum(if).....)
SELECT COUNT(*) AS 'total',
SUM(IF(hire_date LIKE '1995%', 1, 0)) AS '1995',
--SUM(if(date_format(fire_date,'Y%')=1996,1,0)) AS '1996',
SUM (IF(hire_date LIKE '1997%',1,0))!'1977',
SUM (IF(hire_date LIKE '1998%',1,0))!'1978'
FROM employees;



-- QUESTION 8.
-- CHALLENGE: Create a matrix query to display the job, the salary for that job based on
-- department number, and the total salary for that job, for departments 20,50, 80 and 90,
-- giving each column an appropriate heading.
SELECT current_job_id AS 'JOB',
SUM(IF(department_id=20,salary,0)) AS'Dept 20',
SUM(IF(department_id=50,salary,0)) AS'Dept 50',
SUM(if(department_id=80,salary,0)) AS'Dept 80',
SUM(salary) AS 'Total'
FROM employees
GROUP BY current_job_id;






