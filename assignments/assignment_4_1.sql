-- Find the 2-seater car (brand and model) that occurs the most in the table
SELECT cars.brand,
       cars.model,
       COUNT(*) as total
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 5