//I want to know how many employees with each title were born after 1965-01-01.
Select count(*) as 'Number of Employees', t.title as 'Title'
From employees e
Inner Join titles t on e.emp_no = t.emp_no
where e.birth_date > '1965-01-01'
Group by t.title;

//2. I want to know the average salary per title.
Select avg(s.salary) as 'Average Salary', t.title as 'Title'
From salaries s
Inner join titles t on s.emp_no = t.emp_no
Group by t.title;

//3. How much money was spent on salary for the marketing department between the years 1990 and 1992?
Select sum(s.salary) as 'Total Salary Spent', d.dept_name as 'Department Name'
from salaries s
Inner Join dept_emp de on s.emp_no = de.emp_no
Inner Join departments d on d.dept_no = de.dept_no
Where d.dept_name = 'Marketing'
and year(s.from_date) >= 1990 and year (s.to_date) <= 1992;
