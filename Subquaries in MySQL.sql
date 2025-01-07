SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary > (SELECT AVG(salary) FROM employee_salary);

SELECT first_name, last_name
FROM employee_salary
WHERE dept_id IN (SELECT department_id FROM parks_departments WHERE department_name = 'Finance');

SELECT department_name, AVG(salary) AS avg_salary
FROM (SELECT dept_id, salary FROM employee_salary WHERE salary > 50000) AS high_earners
JOIN parks_departments ON high_earners.dept_id = parks_departments.department_id
GROUP BY department_name;
