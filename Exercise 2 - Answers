--Answers 

--Question 1 
SELECT DISTINCT department 
*FROM students;

--Outcome:
Department
IT
HR
Finance

--Question 2
SELECT department,
       AVG(age) AS avg_age
FROM students
GROUP BY department;

--Outcome: 
department   Avg_age
IT           20.5
HR           22.0
Finance      23.0

--Question 3 
SELECT department,
       COUNT(*) AS student_count
FROM students 
GROUP BY department
HAVING COUNT(*) > 1 ;

--Outcome: 
department   Student_count
IT           2
HR           2

--Question 4 
SELECT student_id,
       name,
       age, 
       department
FROM students 
WHERE age BETWEEN 21 and 23;

--Outcome: 
Student_id   name     age    department
  2          Bob      22     HR
  3          Charlie  21     IT
  4          Diana    23     Finance 
  5          Eve      22     HR

  --Question 5
  SELECT student_id,
       name,
       age, 
       department
FROM students 
WHERE department IN ('IT','HR')
and age > 21;

--Outcome:
Student_id name  age  department
  2        Bob   22   HR
  5        Eve   22   HR

  --Question 6
SELECT department, SUM(credits) AS total_credits
FROM courses
GROUP BY department
HAVING SUM(credits) > 5;

--Outcome: 
department  Total_credits
   IT             11

--Question 7 

SELECT course_id,
       course_name, 
       department,
       credits
FROM courses
WHERE credits <> 4;

--Output:
Course_id Course_name department credits
  101     SQL Basics   IT          3
  104     Excel        Finance     2
  105     Statistics   HR          3

--Question 8
SELECT course_id, 
       course_name,
       credits
FROM courses
ORDER BY credits DESC
LIMIT 3;

--Output:
Course_id Course_name  credits
  102       Python       4
  103     Data Science   4
  101     SQL Basics     3

--Question 9
SELECT MAX(grade) AS max_grade,
       MIN(grade) AS min_grade,
       AVG(grade) AS avg_grade
FROM enrollments;

--Output:
Max_grade Min_grade Avg_grade
   90        78       84.6

--Question 10 
SELECT course_id,
       COUNT(*) AS enrollment_count
FROM enrollments
GROUP BY course_id;

--Outcome:
Course_id Enrolment_count
   101             1
   102             1
   103             1
   104             1
   105             1

--Question 11
SELECT department,
 SUM(salary) AS total_salary,
 SUM(bonus) AS total_bonus
FROM salaries
GROUP BY department;

--Outcome:
department Total_salary Total_bonus
   IT      122000        10500
   HR      109000        7500
Finance    70000         6000

--Question 12
SELECT department, 
       AVG(salary) AS avg_salary
FROM salaries
GROUP BY department
HAVING AVG(salary) > 55000;

--Output:
department  avg_salary
IT          61000
Finance     70000

--Question 13
SELECT employee_id, 
       name, 
       salary, 
       bonus,
 (salary + bonus) AS total_compensation
FROM salaries
WHERE (salary + bonus) > 60000;

--Output:
Employee_id  name   salary  bonus  Total_compensation
    1        Tom    60000   5000    65000
    3        Spike  70000   6000    76000
    4        Tyke   62000   5500    67500

--Question14
SELECT department,
 SUM(budget) AS total_budget,
 AVG(budget) AS avg_budget
FROM projects
GROUP BY department
HAVING AVG(budget) > 70000;

 --Output:
department Total_budget Avg_budget
IT         270000        135000
Finance    80000         80000

--Question 15
SELECT project_id, project_name, department, budget
FROM projects
WHERE budget BETWEEN 50000 AND 120000
 AND department <> 'Marketing';
 
--Output:
Project_id  Project_name    department  budget
    1       AI App          IT          120000
    2       Payroll System  Finance     80000
    5       HR Portal       HR          50000




