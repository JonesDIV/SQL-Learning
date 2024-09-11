# Write your MySQL query statement below
select e2.employee_id, e2.name, count(e1.reports_to) as reports_count, round(avg(e1.age)) as average_age from Employees as e1
inner join Employees as e2 on e2.employee_id = e1.reports_to
group by e2.employee_id
order by e2.employee_id