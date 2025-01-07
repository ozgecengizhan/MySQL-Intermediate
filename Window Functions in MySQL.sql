-- Window functions 

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id ; 

select dem.first_name, dem.last_name, gender,
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id ; 

select dem.employee_id, dem.first_name, dem.last_name,gender,salary,
ROW_NUMBER() over(partition by gender order by salary desc) row_num,
RANK() over(partition by gender order by salary desc) eank_num,
dense_rank() over(partition by gender order by salary desc) dense_runk_num
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id ; 