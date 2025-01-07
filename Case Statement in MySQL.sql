-- case statement 

 select first_name, last_name,age,
 case 
 when age <= 30 then 'young'
 when age between 31 and 50 then 'old'
 when age >= 50 then 'On deaths door'
 end as Age_Bracket
 from employee_demographics ;
 
 -- pay increase and bonus
 -- <5000 = %5 
 -- >5000 = %7
 -- Finance = %10 Bonus
 
 select first_name,last_name,salary,
 case 
	when salary < 50000 then salary * 1.05
	when salary > 50000 then salary * 1.07
    else salary
 end as New_Salary,
 case 
	when dept_id = 6 then salary * .10
end as Bonus
 from employee_salary;