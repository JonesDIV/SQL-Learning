# Write your MySQL query statement below
select s.user_id, round(avg(IF(c.action = 'confirmed', 1,0)),2) as confirmation_rate from Signups as s
left outer join Confirmations as c on s.user_id = c.user_id
group by s.user_id
