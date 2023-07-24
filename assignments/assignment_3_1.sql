-- Create a selection in which you can find the car and model with the highest tax
SELECT cars.brand, cars.model, cars.tax
FROM registered_cars AS cars
ORDER BY cars.tax DESC
LIMIT 5