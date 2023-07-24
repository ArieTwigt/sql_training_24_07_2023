-- How many cars (combination of brand and model) have more than 7 seats?

SELECT COUNT(*) AS aantal
FROM (
       SELECT DISTINCT cars.brand, cars.model
       FROM registered_cars AS cars
       WHERE seats > 7
)