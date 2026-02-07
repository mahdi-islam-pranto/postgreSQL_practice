select * from employees;

-- Alter: modify the structure of existing database, table, columns, schema, etc

-- add a new column
alter table employees add column city varchar(100) not null default 'Dhaka';
-- drop column
alter table employees drop column city;
-- rename column
alter table employees rename column city to city_name;
-- modify data type of a column
alter table employees alter column city_name type text;
-- modify constraints of a column
alter table employees alter column city_name drop not null;
-- drop default value 
alter table employees alter column city_name drop default;

-- modify table name 
-- first create new table
create table example_table
 (id int, name varchar(100), city text);
select * from example_table;
-- add some default value
alter table example_table alter column city set default 'dhaka';
-- change table name
alter table example_table rename to example_users;
select * from example_users;
