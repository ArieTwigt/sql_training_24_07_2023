-- SQLite
SELECT DISTINCT cars.brand, cars.model, cars.color, cars.price
FROM registered_cars AS cars
WHERE cars.brand = "FIAT"
ORDER BY cars.brand, cars.model, cars.color