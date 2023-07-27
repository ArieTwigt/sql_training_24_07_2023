-- Create a query in which you provide an overview of the most popular colours for each country (of origin)

WITH cars_color AS (
    SELECT brands.country,
        cars.color,
        COUNT(*) AS total
    FROM registered_cars AS cars
    JOIN car_brands AS brands
    ON cars.brand = brands.brand
    GROUP BY 1,2
)

SELECT cars_color.country, 
       cars_color.color,
       MAX(cars_color.total) AS max_total
FROM cars_color
GROUP BY 1
ORDER BY 3 DESC