select s.user_id, 
round(sum(if(c.action= 'confirmed' ,1 ,0))/count(*), 2) as confirmation_rate

-- round(sum(case when action = 'confirmed' then 1 else 0 end) /count(*), 2) as confirmation_rate
from Signups s 
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id
order by s.user_id