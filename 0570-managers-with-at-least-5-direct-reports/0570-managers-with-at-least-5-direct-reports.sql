# Write your MySQL query statement below

select m.name
from Employee m
left join Employee e
on m.id = e.managerId
group by e.managerId
having count(e.managerId) >= 5


