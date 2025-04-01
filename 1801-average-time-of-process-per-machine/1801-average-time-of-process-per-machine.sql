-- # Write your MySQL query statement below

-- select s.machine_id, round(avg(e.timestamp - s.timestamp), 3) as processing_time
-- from Activity s
-- join Activity e
-- on s.machine_id = e.machine_id and s.process_id = e.process_id  and s.activity_type = 'start' 
-- and e.activity_type = 'end'
-- group by s.machine_id






select a.machine_id, round(avg(b.timestamp - a.timestamp), 3) as processing_time
from Activity a
inner join Activity b
on a.machine_id = b.machine_id and a.process_id = b.process_id and a.activity_type = 'start' 
and b.activity_type = 'end'
group by a.machine_id