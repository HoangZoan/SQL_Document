CREATE EXTENSION dblink;

SELECT first_name, last_name
FROM ('host=localhost user=postgres password=root dbname=Employees',
'select first_name, last_name from employees')
AS t1(first_name NAME, last_name NAME);