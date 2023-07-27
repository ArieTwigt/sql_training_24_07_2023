-- What car has the highest price per seat?
SELECT cars.brand,
       cars.model,
       ROUND(AVG(cars.price / cars.seats), 2)
             AS price_per_seat
FROM registered_cars AS cars
GROUP BY 1,2
ORDER BY price_per_seat DESC
