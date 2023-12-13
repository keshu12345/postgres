
CREATE TABLE Employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	salary FLOAT,
	last_update TIMESTAMP,

)

CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    last_update TIMESTAMP
);
INSERT INTO actor (first_name, last_name, last_update)
VALUES
    ('John', 'Doe', CURRENT_TIMESTAMP),
    ('Jane', 'Smith', CURRENT_TIMESTAMP),
    ('Michael', 'Johnson', CURRENT_TIMESTAMP),
    ('Emily', 'Davis', CURRENT_TIMESTAMP),
    ('David', 'Wilson', CURRENT_TIMESTAMP),
    ('Sarah', 'Brown', CURRENT_TIMESTAMP),
    ('Chris', 'Lee', CURRENT_TIMESTAMP),
    ('Olivia', 'Garcia', CURRENT_TIMESTAMP),
    ('Daniel', 'Martinez', CURRENT_TIMESTAMP),
    ('Ava', 'Lopez', CURRENT_TIMESTAMP);
	
	
	INSERT INTO actor (first_name, last_name, last_update)
VALUES
    ('John', 'Doe', CURRENT_TIMESTAMP);

INSERT INTO actor (first_name)
VALUES
    ('Maneesh');
	
	
select * from actor
ORDER BY last_name DESC
GROUP BY first_name;

SELECT COUNT(first_name) from actor;

SELECT COUNT(DISTINCT(first_name)) FROM actor;

--  count total number of tables
SELECT COUNT(*) FROM actor;

CREATE table customer(
	customer_id SERIAL PRIMARY KEY,
	store_id SERIAL FORIGEN KEY
    first_name VARCHAR,
	last_name VARCHAR,
	emial VARCHAR,
	activeBool bool,
	create_at TIMESTAMP,
    last_updated TIMESTAMP,
	active bool
	

);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    store_id INT REFERENCES store(store_id),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
	address_id INT REFERENCES address(address_id),
    active_bool BOOLEAN,
    created_at TIMESTAMP,
    last_updated TIMESTAMP,
    active BOOLEAN
);

CREATE TABLE address(
	address_id SERIAL PRIMARY KEY,
	address VARCHAR,
	address2 VARCHAR,
	district VARCHAR,
	city_id INT REFERENCES city(city_id),
	postal_code VARCHAR,
	phone VARCHAR,
	last_update TIMESTAMP  
);

CREATE TABLE city(
    city_id SERIAL PRIMARY KEY,
	city VARCHAR,
	country_id INT REFERENCES country(country_id),
	last_update TIMESTAMP	
);


CREATE TABLE country(
	country_id SERIAL PRIMARY KEY,
	country VARCHAR,
	last_updated TIMESTAMP
);

CREATE TABLE store(
	store_id SERIAL PRIMARY KEY,
	manager_staff_id INT REFERENCES staff(staff_id),
	address_id INT REFERENCES address(address_id),
	last_update TIMESTAMP

);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INT REFERENCES address(address_id),
    email VARCHAR(100),
    store_id INT REFERENCES store(store_id),
    active BOOLEAN,
    username VARCHAR(50),
    password VARCHAR(50),
    last_update TIMESTAMP,
    picture BYTEA -- Assuming BYTEA for storing binary data like images
);


CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100),
	last_update TIMESTAMP
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT REFERENCES department(department_id),
    hire_date DATE,
    salary DECIMAL(10, 2),
    is_manager BOOLEAN,
	last_update TIMESTAMP
);

-- Example inserts for the employee table using department_id values from 1 to 30
INSERT INTO employee (first_name, last_name, department_id, hire_date, salary, is_manager, last_update)
VALUES
    ('John', 'Doe', 5, '2023-01-15', 60000.00, true, CURRENT_TIMESTAMP),
    ('Jane', 'Smith', 12, '2022-08-20', 55000.00, false, CURRENT_TIMESTAMP),
    ('Michael', 'Johnson', 8, '2023-03-10', 62000.00, true, CURRENT_TIMESTAMP),
    ('Emily', 'Williams', 20, '2022-11-05', 58000.00, false, CURRENT_TIMESTAMP),
    ('David', 'Brown', 15, '2023-02-28', 58000.00, false, CURRENT_TIMESTAMP),
    ('Emma', 'Miller', 1, '2022-07-10', 54000.00, false, CURRENT_TIMESTAMP),
    ('William', 'Jones', 25, '2023-04-03', 63000.00, true, CURRENT_TIMESTAMP),
    ('Olivia', 'Garcia', 3, '2022-09-12', 56000.00, false, CURRENT_TIMESTAMP),
    ('Daniel', 'Martinez', 18, '2023-05-20', 59000.00, false, CURRENT_TIMESTAMP),
    ('Sophia', 'Wilson', 10, '2022-12-18', 57000.00, false, CURRENT_TIMESTAMP),
    ('James', 'Lopez', 7, '2023-01-05', 61000.00, true, CURRENT_TIMESTAMP),
    ('Ava', 'Lee', 21, '2022-08-30', 55000.00, false, CURRENT_TIMESTAMP),
    ('Logan', 'Harris', 19, '2023-03-25', 59000.00, false, CURRENT_TIMESTAMP),
    ('Ethan', 'Clark', 14, '2022-11-15', 58000.00, false, CURRENT_TIMESTAMP),
    ('Mia', 'Lewis', 2, '2023-04-10', 54000.00, false, CURRENT_TIMESTAMP),
    ('Harper', 'White', 29, '2022-09-28', 65000.00, true, CURRENT_TIMESTAMP),
    ('Benjamin', 'Young', 9, '2023-06-05', 60000.00, true, CURRENT_TIMESTAMP),
    ('Evelyn', 'Scott', 17, '2022-12-30', 57000.00, false, CURRENT_TIMESTAMP),
    ('Charlotte', 'King', 11, '2023-01-25', 56000.00, false, CURRENT_TIMESTAMP),
    ('Lucas', 'Green', 6, '2022-08-08', 60000.00, true, CURRENT_TIMESTAMP),
    ('Henry', 'Baker', 27, '2023-05-15', 63000.00, true, CURRENT_TIMESTAMP),
    ('Liam', 'Adams', 22, '2023-02-10', 59000.00, false, CURRENT_TIMESTAMP),
    ('Amelia', 'Campbell', 13, '2022-10-20', 57000.00, false, CURRENT_TIMESTAMP),
    ('Chloe', 'Evans', 26, '2023-04-18', 64000.00, true, CURRENT_TIMESTAMP),
    ('Zoe', 'Nelson', 4, '2022-09-05', 55000.00, false, CURRENT_TIMESTAMP),
    ('Luna', 'Perez', 23, '2023-06-20', 61000.00, true, CURRENT_TIMESTAMP),
    ('Mateo', 'Murphy', 16, '2023-01-02', 58000.00, false, CURRENT_TIMESTAMP),
    ('Ella', 'Rivera', 30, '2022-08-12', 55000.00, false, CURRENT_TIMESTAMP),
    ('Jackson', 'Gonzalez', 28, '2023-03-08', 62000.00, true, CURRENT_TIMESTAMP),
    ('Penelope', 'Torres', 24, '2022-11-30', 59000.00, false, CURRENT_TIMESTAMP);



INSERT INTO employee(employee_id,first_name,last_name,department_id,hire_date,salary,is_manager,last_update)
VALUES
ALTER TABLE department
ADD COLUMN last_update TIMESTAMP;


INSERT INTO department (department_name, location, last_update)
VALUES
    ('Sales', 'New York', CURRENT_TIMESTAMP),
    ('Marketing', 'San Francisco', CURRENT_TIMESTAMP),
    ('Engineering', 'Seattle', CURRENT_TIMESTAMP),
    ('HR', 'Chicago', CURRENT_TIMESTAMP),
    ('Finance', 'Los Angeles', CURRENT_TIMESTAMP),
    ('IT', 'Boston', CURRENT_TIMESTAMP),
    ('Sales', 'Houston', CURRENT_TIMESTAMP),
    ('Research', 'Denver', CURRENT_TIMESTAMP),
    ('R&D', 'Miami', CURRENT_TIMESTAMP),
    ('Engineering', 'Austin', CURRENT_TIMESTAMP),
    ('Quality Assurance', 'Portland', CURRENT_TIMESTAMP),
    ('Engineering', 'Atlanta', CURRENT_TIMESTAMP),
    ('Engineering', 'Dallas', CURRENT_TIMESTAMP),
    ('Supply Chain', 'San Diego', CURRENT_TIMESTAMP),
    ('IT', 'Phoenix', CURRENT_TIMESTAMP),
    ('IT', 'Las Vegas', CURRENT_TIMESTAMP),
    ('Public Relations', 'San Jose', CURRENT_TIMESTAMP),
    ('IT', 'Philadelphia', CURRENT_TIMESTAMP),
    ('IT', 'Detroit', CURRENT_TIMESTAMP),
    ('R&D', 'Minneapolis', CURRENT_TIMESTAMP),
    ('Logistics', 'Orlando', CURRENT_TIMESTAMP),
    ('Media', 'Charlotte', CURRENT_TIMESTAMP),
    ('R&D', 'Salt Lake City', CURRENT_TIMESTAMP),
    ('HR', 'San Antonio', CURRENT_TIMESTAMP),
    ('HR', 'Nashville', CURRENT_TIMESTAMP),
    ('Analytics', 'Kansas City', CURRENT_TIMESTAMP),
    ('HR', 'Raleigh', CURRENT_TIMESTAMP),
    ('HR', 'Columbus', CURRENT_TIMESTAMP),
    ('Communications', 'Indianapolis', CURRENT_TIMESTAMP),
    ('Analytics', 'Memphis', CURRENT_TIMESTAMP);



SELECT * FROM department;

SELECT department_name, COUNT(department_name) 
FROM department
GROUP BY department_name
HAVING COUNT(department_name)BETWEEN 2 AND 4
ORDER BY count DESC;

SELECT department_name, COUNT(department_name) 
FROM department
GROUP BY department_name
HAVING COUNT(department_name)IN(2,4) 
ORDER BY count DESC;


SELECT * FROM employee;



SELECT first_name,salary,department_id
FROM employee
ORDER BY salary DESC,department_id;




SELECT first_name,salary,department_id
FROM employee
ORDER BY salary DESC,department_id
LIMIT 10;

-- find 10th height salary 


SELECT MAX(salary)
FROM(SELECT first_name,salary,department_id
FROM employee
ORDER BY salary DESC,department_id
LIMIT 10)


SELECT MAX(salary)
FROM employee
GROUP BY salary
ORDER BY salary DESC
LIMIT 10;


SELECT * FROM employee
SELECT d.department_name,e.salary
FROM employee as e
INNER JOIN department as d ON d.department_id=e.department_id
WHERE d.department_name = 'IT';

SELECT d.department_name, e.salary
FROM employee AS e
INNER JOIN department AS d ON d.department_id = e.department_id
WHERE d.department_name = 'IT';




SELECT department_name,MAX(e.salary)



SELECT d.department_name,MAX(e.salary) as salary_max
FROM employee as e
INNER JOIN department as d ON d.department_id=e.department_id
GROUP BY department_name
ORDER BY salary_max DESC

SELECT * FROM employee
WHERE first_name='Harper'AND last_name='White';

SELECT e.department_id,e.first_name,e.last_name,d.department_name,MAX(e.salary) as salary_max
FROM employee as e
INNER JOIN department as d ON d.department_id=e.department_id
GROUP BY d.department_name,e.first_name,e.last_name,e.department_id
ORDER BY salary_max DESC
LIMIT 1;


SELECT e.department_name,MAX(e.salary) as max_salary
FROM (
	SELECT *
    FROM employee as e
    INNER JOIN department as d ON d.department_id=e.department_id
   ) as e
GROUP BY e.department_name
ORDER BY  max_salary DESC;



SELECT * FROM employee;

SELECT d.department_name,MAX(e.salary)as max_salary,COUNT(d.department_name) as count_dept
FROM employee as e
INNER JOIN department as d ON d.department_id=e.department_id
GROUP BY d.department_name
-- HAVING d.department_name IN('IT','HR')
ORDER BY max_salary DESC,count_dept;

INSERT INTO department (department_name)
VALUES
    ('Sales'),
    ('Marketing');
	
	SELECT * FROM department;
	

INSERT INTO employee (first_name, last_name, department_id, hire_date, salary, is_manager, last_update)
VALUES
    ('John', 'Doe', 31, '2023-01-15', 60000.00, true, CURRENT_TIMESTAMP),
    ('Jane', 'Smith', 32, '2022-08-20', 55000.00, false, CURRENT_TIMESTAMP);
	
	INSERT INTO employee (first_name, last_name, department_id, hire_date, salary, is_manager, last_update)
VALUES
    ('John', 'Doe', 33, '2023-01-15', 60000.00, true, CURRENT_TIMESTAMP),
    ('Jane', 'Smith', 34, '2022-08-20', 55000.00, false, CURRENT_TIMESTAMP);
	

SELECT * 
FROM employee as e
LEFT JOIN department as d ON d.department_id=e.department_id;


SELECT * 
FROM employee as e
RIGHT JOIN department as d ON d.department_id=e.department_id;

SELECT* FROM department;

DELETE FROM department
WHERE department_id=31;


CREATE TABLE IF NOT EXISTS registration(
	
	reg_id SERIAL PRIMARY KEY,
	name VARCHAR
);

INSERT INTO registration(name)
VALUES
	('Keshav'),
	('Vivek'),
	('Dinesh'),
	('Akash'),
	('Maneesh'),
	('Vivekanad Rao'),
	('Rajesh');
	
	SELECT * FROM registration

CREATE TABLE IF NOT EXISTS registration (
    reg_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS login(
	log_id SERIAL PRIMARY KEY,
	name VARCHAR

)

INSERT INTO login(name)
VALUES
	('Keshav'),
	('Love Saxena'),
	('Dinesh'),
	('Rohit'),
	('Suneel'),
	('Vivekanad Rao'),
	('Rajesh');
	
	
SELECT * FROM registration	

SELECT * FROM login


UPDATE registration 
SET name='xyz'
WHERE reg_id=1;

UPDATE login 
SET name='xyz'
WHERE log_id=4


SELECT * 
FROM registration AS reg
INNER JOIN login as l ON  reg.name=l.name;


SELECT *
FROM registration AS reg
LEFT JOIN login AS l ON reg.name = l.name;


SELECT *
FROM registration AS reg
LEFT JOIN login AS l ON l.name = reg.name;

SELECT *
FROM registration AS reg
RIGHT JOIN login AS l ON l.name = reg.name;


SELECT *
FROM registration AS reg
FULL OUTER JOIN login AS l ON l.name = reg.name;


SELECT *
FROM registration AS reg
FULL OUTER JOIN login AS l ON l.name = reg.name
WHERE reg.reg_id IS NULL OR l.log_id IS NULL;


SELECT *
FROM registration AS reg
FULL OUTER JOIN login AS l ON l.name = reg.name
WHERE reg.reg_id IS NOT NULL AND l.log_id IS NOT NULL;


SELECT *
FROM registration AS reg
LEFT OUTER JOIN login AS l ON l.name = reg.name;



SELECT *
FROM registration AS reg
LEFT OUTER JOIN login AS l ON reg.name = l.name;

SELECT *
FROM registration AS reg
LEFT OUTER JOIN login AS l ON reg.name = l.name
WHERE l.log_id IS null;

SELECT *
FROM registration AS reg
LEFT OUTER JOIN login AS l ON reg.name = l.name
WHERE l.log_id IS NOT null;

SELECT *
FROM registration 
UNION
SELECT *
FROM login 

SHOW ALL;
SHOW TIMEZONE;

SELECT NOW();
SELECT TIMEOFDAY();

SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

-- EXTRACT()
-- allows you to extract or obtain a sub-component of a date value
-- YEAR
-- MONTH
-- DAY
-- WEEK
-- QUARTER

--AGE()
-- convert data types to text
--TO_CHAR(date_col,'mm-dd-yyyy')


SELECT * FROM employee;

SELECT EXTRACT(YEAR FROM last_update)AS year
FROM employee;

SELECT EXTRACT(MONTH FROM last_update)AS month
FROM employee;

SELECT EXTRACT(QUARTER FROM last_update)AS quarter
FROM employee;

SELECT AGE(last_update)
FROM employee;

SELECT TO_CHAR(last_update,'dd-mm-yyyy')
FROM employee;


SELECT TO_CHAR(last_update,'MONTH YYYY')
FROM employee;

-- How many employee joinning on monday

SELECT COUNT(*)
FROM employee
WHERE EXTRACT(dow FROM last_update)=3;

SELECT ROUND(salary/SUM(salary),2)*100
FROM employee
GROUP BY salary


SELECT LENGTH(first_name)
FROM employee

SELECT first_name||last_name
FROM employee

SELECT first_name||' '||last_name AS full_name
FROM employee

SELECT upper(first_name)||' '||upper(last_name) AS full_name
FROM employee


SELECT lower(LEFT(first_name,1))||lower(last_name)||'@gmail.com'AS email
FROM employee


CREATE TABLE IF NOT EXISTS employees(
	
	emp_id SERIAL PRIMARY KEY,
	name VARCHAR,
	report_id INT
);


INSERT INTO employees(name,report_id)
VALUES
	('Andrew',3),
	('Bob',3),
	('Charlie',4),
	('David',1);

SELECT * FROM employees;

SELECT e.name as name,r.name as reportee
FROM employees AS e
JOIN employees AS r ON e.report_id=r.emp_id;














 







