-- SQLite
SELECT cars.brand,
       cars.model, 
       cars.tax
FROM registered_cars AS cars
WHERE cars.brand IN ("BMW", "AUDI", "VOLKSWAGEN")
  AND cars.tax <= 1000
ORDER BY cars.tax