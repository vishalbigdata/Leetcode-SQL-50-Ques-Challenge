# Write your MySQL query statement below
/* Write your T-SQL query statement below */

select  w1.id as Id
from weather w1
left join weather w2
on w1.recordDate - interval 1 day = w2.recordDate
where w1.temperature > w2.temperature