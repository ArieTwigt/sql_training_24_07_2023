SELECT car_type_count.car_type,
       car_type_count.count,
       (car_type_count.count * 100 / total_cars.total_count) AS percentage
FROM (SELECT car_type, 
       COUNT(*) as count
FROM registered_cars
GROUP BY car_type) as car_type_count,
(SELECT COUNT(*) AS total_count
 FROM registered_cars) as total_cars
ORDER BY car_type_count.count DESC