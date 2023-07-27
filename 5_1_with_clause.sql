
WITH cars_type_tax AS (
    SELECT cars.car_type,
           (cars.tax / cars.price) * 100 AS tax_percentage
    FROM registered_cars AS cars
)

SELECT cars_type_tax.car_type,
       ROUND(AVG(cars_type_tax.tax_percentage), 2) AS tax_pct
FROM cars_type_tax
GROUP BY 1
ORDER BY 2 DESC