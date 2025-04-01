# Write your MySQL query statement below
/* Write your T-SQL query statement below */

select a.id as Id
from weather a
inner  join weather b
on datediff(a.recordDate, b.recordDate) = 1 and a.temperature > b.temperature