select * from employees;
-- Clause: used to define how data is retrieved, filtered, grouped, or organized

-- where clause: show data only when the conditions are met
select * from employees where sallary >= 30000.00;

-- multiple condition
select * from employees where dept= 'IT' AND sallary >= 30000.00;
-- where + in clause
select * from employees where dept in ('IT', 'Sales', 'HR');
-- between: set range in values
select * from employees where sallary between 40000 and 700000;

-- distinct clause: only unique values
select distinct dept from employees;

-- order by: sorting of values (ascending)
select * from employees order by f_name;
-- order by: sorting of values descending
select * from employees order by sallary desc;

-- limit: limit by number of values
select * from employees limit 3; 

-- like: find pattern from values (%:anything)(a:f_name with a in last)
select * from employees where f_name like '%a';
-- has only two characters
select * from employees where dept like '__';
-- has 'a' as second character in f_name
select * from employees where f_name like '_a%';

