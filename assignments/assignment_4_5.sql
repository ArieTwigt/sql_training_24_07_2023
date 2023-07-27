-- How many cars of the type hatchback have a higher price than 40.000?
SELECT COUNT(*) as total
FROM registered_cars AS cars
WHERE cars.car_type = "hatchback"
  AND cars.price > 40000