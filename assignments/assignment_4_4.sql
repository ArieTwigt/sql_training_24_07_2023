-- How many cars have a higher price than 1.000.000?
SELECT COUNT(*) as total
FROM registered_cars AS cars
WHERE cars.price > 1000000