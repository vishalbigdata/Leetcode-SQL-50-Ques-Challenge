# Write your MySQL query statement below

select contest_id, round(count(r.user_id)*100/(select count(*) from Users), 2) as percentage
from Register r
group by 1
order by 2 desc, 1 asc