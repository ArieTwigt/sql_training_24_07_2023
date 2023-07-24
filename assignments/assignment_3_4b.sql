-- What is the cheapest car and model with 7 seats?
SELECT DISTINCT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE seats = 7
ORDER BY cars.price ASC