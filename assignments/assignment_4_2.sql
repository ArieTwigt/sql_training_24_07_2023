-- From these 2-seater cars, which color has the highest price on average?
SELECT cars.brand,
       cars.model,
       cars.color,
       AVG(cars.price) as avg_price,
       COUNT(*) AS total
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2,3
ORDER BY 4 DESC
LIMIT 5;