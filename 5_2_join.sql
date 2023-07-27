SELECT 
       brands.country,
       COUNT(cars.brand) AS total
FROM registered_cars AS cars
JOIN car_brands AS brands
ON cars.brand = brands.brand
GROUP BY 1
ORDER BY 2 DESC