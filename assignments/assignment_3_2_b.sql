-- How many distinct car types (car_type) does the data set contain?
SELECT COUNT(*) AS aantal
FROM (SELECT DISTINCT(cars.car_type)
      FROM registered_cars AS cars)
