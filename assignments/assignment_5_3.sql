-- Which country produces the most hybrid cars?

WITH cars_hybrid AS (
    SELECT  cars.plate,
            cars.brand, 
            SUM(motor.net_power_fuel) AS power_fuel,
            SUM(net_power_electric) AS power_electric
    FROM registered_cars AS cars
    JOIN cars_motor AS motor
    ON cars.plate = motor.plate
    GROUP BY 1,2
    HAVING power_electric > 0 
    AND power_fuel > 0
)

SELECT brands.country,
       COUNT(*) AS total
FROM cars_hybrid
JOIN car_brands AS brands
  ON cars_hybrid.brand = brands.brand
GROUP BY brands.country
ORDER BY total DESC