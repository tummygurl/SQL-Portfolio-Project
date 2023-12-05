-- The Air QUality ranges from 0 to 100
-- 0 to 30 = Bad
-- 30.01 to 50 = Fair
-- 50.01 to 70 = Good
-- 70.01 to 100 = Very good
-- Rename table from "cities air quality & water pollution" to "pollution" for easy analysis process
RENAME TABLE `cities air quality & water pollution` TO pollution

-- Show all data in the pollution dataset
SELECT *
FROM pollution

-- Countries with bad air quality
select distinct country, `Air Quality`
from pollution
where `Air Quality` <=30

-- Countries with fair air quality
select distinct country, `Air Quality`
from pollution
where `Air Quality` >30 and `Air Quality`<=50

-- Countries with good air quality
select distinct country, `Air Quality`
from pollution
where `Air Quality` >50 and `Air Quality`<=70

-- Countries with a very good air quality
select distinct country, `Air Quality`
from pollution
where `Air Quality` >70 and `Air Quality`<=100

-- The Water Pollution ranges from 0 to 100
-- 0 to 30 = lesser
-- 30.01 to 50 = less
-- 50.01 to 70 = great
-- 70.01 to 100 = greater
-- -- Countries that have water pollution to be lesser
select distinct country, `Water Pollution`
from pollution
where `Water Pollution` <=30

-- -- Countries that have water pollution to be less
select distinct country, `Water Pollution`
from pollution
where `Water Pollution` >30 and `Water Pollution`<=50

-- -- Countries that have water pollution to be great
select distinct country, `Water Pollution`
from pollution
where `Water Pollution` >50 and `Water Pollution`<=70

-- -- 3 Countries that have water pollution to be greater in descending order
select distinct country, `Water Pollution`
from pollution
where `Water Pollution` >70 and `Water Pollution`<=100
order by `Water Pollution` desc
limit 3

-- Cities in the United States of America with the greater water pollution
select distinct City, `Water Pollution`
from pollution
where Country like 'United%' and `Water Pollution` >70 and `Water Pollution`<=100

-- Total number of cities with bad air quality
select count(City) as 'total cities'
from pollution
where `Air Quality` <=30

-- Countries with both bad air quality and a greater water pollution
select distinct country, `Water Pollution`, `Air Quality`
from pollution
where `Water Pollution` >70 and `Water Pollution`<=100 and `Air Quality`<=30

-- Countries with both very good air quality and lesser water pollution
select distinct country, `Air Quality`, `Water Pollution`
from pollution
where `Air Quality`>70 and `Air Quality`<=100 and `Water Pollution` <=30

