-- 1. Top 10 Most Food-Insecure Countries

SELECT 
    country_name,
    hunger_severity_index
FROM food_security
ORDER BY hunger_severity_index DESC
LIMIT 10;

-- 2. Global Hunger Severity Trend by Year

SELECT 
    year,
    AVG(hunger_severity_index) AS avg_hunger
FROM food_security
GROUP BY year
ORDER BY year;

-- 3. GDP VS Hunger Severity

SELECT 
    country_name,
    gdp_per_capita_usd,
    hunger_severity_index
FROM food_security
ORDER BY hunger_severity_index DESC;
