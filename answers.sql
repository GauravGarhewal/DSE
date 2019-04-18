#1. WAQ to fetch all the records from Employee whose joining year is 2017?


SELECT *
FROM employees
WHERE year(hire_date) = 2017;

#2. WAQ to get information of Employee where Employee is not assigned to the department

SELECT *
FROM employees
WHERE department_id is null;

#3. WAQ to display first 5 Records from Employee table

SELECT *
FROM employees
LIMIT 5;

#4. WAQ to fetch last record from the table?

SELECT *
FROM employees
ORDER BY employee_id DESC
LIMIT 5;

#5. WAQ to find Second Highest Salary of Employee?

SELECT * 
FROM employees
WHERE salary = (SELECT max(salary)
				FROM employees
				WHERE salary != (SELECT max(salary)
									FROM employees));
                                    
#6. What will be the result of the query below? 

select case when null = null then 'True' else 'False' end as Result;

#7. WAQ to fetch the first 5 characters of a string?

SELECT SUBSTRING(email,1,5)
FROM employees; 

#8. WAQ to find all Employee records containing the word "Joe", regardless of whether it was stored as JOE, Joe, or joe.

SELECT *
FROM employees
WHERE lower(email) like '%joe%';

#9. WAQ to find number of employees according to gender whose DOB is between 01/01/1960 to 31/12/1975.

SELECT *
FROM employees 
WHERE hire_date between 1960-06-17 and 1990-12-31;