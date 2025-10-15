--Answers 

--Question 1

SELECT * FROM employees;

--Outcome 

id first_name last_name department salary hire_date  city
1  John       Doe       IT         55000  2018-06-15 New York
2  Jane       Smith     HR         48000  2019-07-20 Chicago
3  Mike       Johnson   Finance    60000  2017-09-30 Los Angeles
4  Sarah      Brown     IT         53000  2021-03-25 New York
5  David      White     Marketing  52000  2016-04-10 San Francisco
6  Emily      Davis     IT         62000  2015-02-14 Chicago
7  Robert     Wilson    Finance    59000  2019-10-01 Houston
8  Jessica    Moore     HR         51000  2018-05-22 Los Angeles
9  Daniel     Clark     Marketing  53000  2022-06-01 Chicago
10 Laura      Hall      IT         50000  2020-08-10 San Francisco

--Question 2

SELECT DISTINCT department
FROM employees;

-- Outcome table

department
IT
HR
Finance
Marketing

--Question 3 
Select first_name,
       last_name,
       salary
FROM employees
ORDER BY 'salary' DESC;

-- Outcome table
first_name last_name salary
Emily      Davis      62000
Mike       Johnson    60000
Robert     Wilson     59000

--Question 4

Select first_name,
       last_name,
       salary
FROM employees
ORDER BY 'salary' DESC
LIMIT 5;

-- Outcome table 
first_name last_name salary
Emily      Davis     62000
Mike       Johnson   60000
Robert     Wilson    59000
John       Doe       55000
Sarah      Brown     53000

-- Question 5

Select first_name,
       last_name,
       department
FROM employees
WHERE department = 'IT';

--Outcome

first_name last_name department
John       Doe       IT
Sarah      Brown     IT

--Question 6

Select first_name,
       last_name,
       department
       salary
FROM employees
WHERE department = 'Finance' 
AND salary > 58 000;

--Outcome

first_name last_name department salary
Mike       Johnson   Finance    60000

--Question 7

Select first_name,
       last_name,
       department
FROM employees
WHERE department = 'HR' OR department = 'Marketing';

--Outcome 

first_name last_name department
Jane       Smith     HR
Jessica    Moore     HR
David      White     Marketing

--Question 8

Select first_name,
       last_name,
       department
FROM employees
WHERE department NOT IN ('IT');

--Outcome

first_name last_name department
Jane       Smith     HR
Mike       Johnson   Finance

--Question 9

Select first_name,
       last_name,
       department
FROM employees
WHERE department IN ('HR','IT','Finance');

--Outcome

first_name last_name department 
John       Doe       IT
Jane       Smith     HR
Robert     Wilson    Finance
Mike       Johnson   Finance

--Question 10

Select first_name,
       last_name,
       deparment,
       salary,
       city
FROM employees
WHERE department = 'IT'
AND salary  > 50 000
AND city = 'New York';

--Outcome 

first_name last_name department salary city
John       Doe       IT         55000  New York

--Question 11

Select first_name,
       last_name,
       deparment,
       salary
FROM employees
WHERE department = ('Finance' OR department = 'Marketing')
AND salary > 52 000
ORDER BY salary DESC;

--Outcome 

first_name last_name department  salary
Mike       Johnson   Finance     60000
Robert     Wilson    Finance     59000
Daniel     Clark     Marketing   53000

--Question 12 

SELECT DISTINCT city
FROM employees
WHERE department NOT IN ('IT', 'HR');

--Outcome

department     city
Finance        Los Angeles
Marketing      San Fransisco
Finance        Houston
Marketing      Chicago

--Question 13 


Select first_name,
       last_name,
       deparment,
       salary,
       hire_date
FROM employees
WHERE department != 'Finance'
AND salary > 50 000
ORDER BY hire_date ASC;

--Question 14 

SELECT first_name, 
       last_name, 
       department,
       city
FROM employees
WHERE city IN ('Chicago', 'Los Angeles')
AND department IN ('IT', 'Marketing')
LIMIT 3;


