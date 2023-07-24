-- SQLite
SELECT cars.brand,
       cars.model,
       cars.price
FROM registered_cars AS cars
ORDER BY cars.price DESC -- oplopend sorteren
LIMIT 10