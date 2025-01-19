---Project Status
with project_status as
(
SELECT 
project_id
,project_name
,project_budget
,'Up Coming' as Status
FROM [upcoming projects]
UNION ALL
SELECT 
project_id
,project_name
,project_budget
,'Completed' as Status
FROM projects
)


---BIG_TABLE
SELECT 
e.employee_id
,e.department_id
,e.first_name
,e.last_name
,e.email
,e.job_title
,e.salary
,d.Department_Name
,pa.project_id
,p.project_name
,p.Status
FROM employees e
join departments d
on e.department_id=d.Department_ID
join project_assignments pa
on e.employee_id=pa.employee_id
join project_status p
on p.project_id=pa.project_id
