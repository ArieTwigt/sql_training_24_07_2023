-- SQLite
SELECT cars.brand,
       cars.model,
       cars.color,
       COUNT(*) AS aantal,
       SUM(cars.price) AS totaal,
       AVG(cars.price) AS average,
       MAX(cars.price) AS max_price
FROM registered_cars AS cars
GROUP BY 1, 2, 3
ORDER BY 4 DESC
LIMIT 10