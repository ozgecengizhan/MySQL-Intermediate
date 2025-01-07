-- Joins

select * from employee_demographics;

select * from employee_salary;

Select * 
from employee_demographics
inner join employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal 
on dem.employee_id = sal.employee_id ;

-- Outer Joins 

select *
from employee_demographics as dem
right join employee_salary as sal 
on dem.employee_id = sal.employee_id ;

select *
from employee_demographics as dem
left join employee_salary as sal 
on dem.employee_id = sal.employee_id ;

-- Self Join

select emp1.employee_id, emp1.first_name, emp1.last_name,
emp2.employee_id,emp2.first_name, emp2.last_name
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 = emp2.employee_id ;

-- Joining multiple tables together

Select * 
from employee_demographics
inner join employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id
inner join parks_departments
on employee_salary.dept_id = parks_departments.department_id;

select * from parks_departments ;