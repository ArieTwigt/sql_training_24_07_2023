-- Create a dataset that contains all types and variations of the TOYOTA COROLLA (combination of brand and model)
SELECT DISTINCT cars.brand, cars.model
FROM registered_cars AS cars
WHERE cars.model LIKE "%COROLLA%"