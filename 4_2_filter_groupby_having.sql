-- SQLite
SELECT cars.brand,
       cars.model,
       ROUND(AVG(cars.price), 2) AS avg_price,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       COUNT(*) AS total_number
FROM registered_cars AS cars
WHERE cars.price <= 100000
GROUP BY 1,2
HAVING avg_price BETWEEN 10000 AND 30000
ORDER BY avg_price
LIMIT 10