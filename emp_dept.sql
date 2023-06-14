employee table with id name dept sal information & department table id name.
Can i get query to get maximum salary department name wise

SELECT d.name AS department_name, MAX(e.sal) AS max_salary
FROM employee e
JOIN department d ON e.dept = d.id
GROUP BY d.name;

--Add Empname also in final output
SELECT d.name AS department_name, MAX(e.sal) AS max_salary, e.name AS employee_name
FROM employee e
JOIN department d ON e.dept = d.id
GROUP BY d.name, e.name;

--show me all employee name with comma seperated if same maximum salary
SELECT d.name AS department_name, e.max_salary, STRING_AGG(e.employee_name, ', ') AS employee_names
FROM (
    SELECT d.id, d.name, MAX(e.sal) AS max_salary
    FROM employee e
    JOIN department d ON e.dept = d.id
    GROUP BY d.id, d.name
) e
JOIN employee emp ON e.id = emp.dept AND e.max_salary = emp.sal
GROUP BY e.id, e.name, e.max_salary;


