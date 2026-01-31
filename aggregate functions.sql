select * from employees;
-- aggregate functions: perform a calculation on a set of values (multiple rows) and return a single value
-- count(),avg,max,min, sum
select count(f_name) from employees;
select sum(sallary) from employees;
select avg(age) from employees;

-- group by: this clause is used to group rows that have the same values in specified columns
select dept from employees group by dept;
-- count employees of each department
select dept, count(emp_id) from employees group by dept;
select dept, sum(sallary) from employees group by dept;
select dept, sum(sallary) as total_s_by_dept from employees group by dept;