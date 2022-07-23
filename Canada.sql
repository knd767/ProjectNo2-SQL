--Selects all data 
SELECT *
FROM immigration_data
WHERE region = 'Caribbean'
ORDER BY country, year
;
-- Shows the yearly average for the Caribbean region
SELECT  year, AVG (immigrants) as average_immigrants
FROM immigration_data
WHERE region = 'Caribbean'
GROUP BY year
ORDER BY average_immigrants DESC
;
--Shows the yearly average for the Caribbean region from 2007 to 2009
SELECT  year, AVG (immigrants) as average_immigrants
FROM immigration_data
WHERE region = 'Caribbean' AND year BETWEEN 2007 and 2009
GROUP BY year
ORDER BY average_immigrants DESC
;

-- Selects all Caribbean countries between 2007 and 2009 and order the data by total immigrants by descending order
SELECT country, SUM(immigrants) as total_immigrants
FROM immigration_data
WHERE region = 'Caribbean' and year between 2007 and 2009
GROUP BY country
HAVING SUM(immigrants) > 100
ORDER BY total_immigrants DESC
;
-- Selects all Caribbean countries between 2007 and 2009 and order the data by total immigrants by ascending order
SELECT country, AVG (immigrants) as avg_immigrants
FROM immigration_data
WHERE region = 'Caribbean' and year between 2007 and 2009
GROUP BY country
ORDER BY avg_immigrants 
;
-- Selects Trinidad immigration records
SELECT country, immigrants, year
FROM immigration_data
WHERE country Like '%Trinidad%' 
ORDER BY year
;
--Selects Trinidad and Tobago's immigration rates and sorts by immigration
SELECT country, immigrants, year
FROM immigration_data
WHERE country Like '%Trinidad%' 
ORDER BY immigrants DESC
;

