create table employees (
	emp_id serial primary key,
	f_name varchar(100) not null,
	l_name varchar(100) not null,
	age smallint not null,
	email varchar(200) not null unique,
	dept varchar(50),
	sallary decimal(10,2) default 20000.00,
	hire_date date not null default current_date
);

-- serial: 1,2,3,4, .... 
-- primary key: emp_id, a column that uniquely identifies each row in a table
-- constraints: set of rules that data meets specific conditions. ex: smallint serial primary key
-- unique: can not be duplicate
-- decimal(10,2): means value counts upto 10 and after . only 2 values
-- default: if no value provided, default value sets

INSERT INTO employees (
    f_name,
    l_name,
    age,
    email,
    dept,
    sallary,
    hire_date
) VALUES
('Rahim', 'Ahmed', 28, 'rahim.ahmed@company.com', 'IT', 35000.00, '2023-06-15'),
('Karim', 'Hossain', 32, 'karim.hossain@company.com', 'HR', 28000.00, '2022-11-01'),
('Nusrat', 'Jahan', 26, 'nusrat.jahan@company.com', 'Marketing', 25000.00, '2024-01-10'),
('Sabbir', 'Khan', 35, 'sabbir.khan@company.com', 'Finance', 42000.00, '2021-09-20'),
('Ayesha', 'Rahman', 29, 'ayesha.rahman@company.com', 'Sales', 30000.00, '2023-03-05'),
('Tanvir', 'Islam', 41, 'tanvir.islam@company.com', 'Operations', 50000.00, '2020-07-18'),
('Farzana', 'Akter', 24, 'farzana.akter@company.com', 'Support', 20000.00, '2024-06-01'),
('Imran', 'Chowdhury', 34, 'imran.chowdhury@company.com', 'IT', 45000.00, '2022-02-12'),
('Shila', 'Begum', 31, 'shila.begum@company.com', 'HR', 27000.00, '2023-10-08'),
('Hasan', 'Mahmud', 27, 'hasan.mahmud@company.com', 'Data', 38000.00, '2024-04-22');

select * from employees

-- test decimal default current date
insert into employees (f_name, l_name, age, email, dept)
values 
('Baby', 'Shiku', 24, 'baby.s@company.com', 'IT'),
('Nayem', 'Hawladar', 24, 'nayem.h@company.com', 'Sales');

select * from employees

