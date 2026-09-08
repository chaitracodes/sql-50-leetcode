select w1.id
from Weather w1
join Weather w2
on datediff(w1.recordDate,w2.recordDate) = 1
where w1.temperature > w2.temperature;

-- Self JOIN Weather to compare each day with its previous day.
-- DATEDIFF() identifies consecutive dates, then we return the id
-- where today's temperature is higher than yesterday's.
