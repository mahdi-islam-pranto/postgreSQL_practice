select * from employees;

-- String functions: data cleaning, formatting, and analysis

-- concat: merge two/multiple values
select CONCAT(f_name,l_name) from employees;
select emp_id, CONCAT(f_name,l_name) from employees;
select emp_id, CONCAT_WS(' ', f_name, l_name) as full_name from employees;
select emp_id, CONCAT_WS(' ', f_name, l_name) as full_name, dept from employees;

-- substring: extract a portion from a text
select SUBSTR('sales', 1,4) from employees; --> return sale
-- replace: replace any text with another
select replace(dept, 'IT','TECH') from employees;
-- length: total length number of a value
select LENGTH(f_name) from employees;
select * from employees where length(f_name)>5;
-- upper: uppercase
select upper(f_name) from employees;
-- trim: remove extra characters
select trim('     pranto   ');

-- sub query: query inside a query
select * from employees where sallary = (select max(sallary) from employees) --> return max sallary row