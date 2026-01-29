-- create table with datatype
create table users (
id int,
name varchar(100),
location varchar(200)
);

-- insert datas/values into table with column name
insert into users (id, name, location) 
values (1, 'pranto', 'dhaka');

-- insert multiple values to table
insert into users values
(2, 'mahdi', 'barishal'),
(3, 'hosen', 'cumilla'),
(4, 'islam', 'cumilla'),
(5, 'mohammad', 'syhlet');

-- read all data from table
select * from users

-- read one column data from table
select name from users

-- modify/update data/value from a table
update users
	set location = 'cumilla'
	where id = 4;

-- insert another value with duplicate and null
insert into users (id, name) 
values (6, 'pranto'), (7, 'habib');

-- delete any row/values from the table
delete from users where id=6;

-- see all values (test)
select * from users
