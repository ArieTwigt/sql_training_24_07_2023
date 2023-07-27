-- SQLite

WITH cars_power AS (
    SELECT cars.brand,
        cars.model,
        AVG(motor.net_power_fuel) AS power_fuel,
        AVG(motor.net_power_electric) AS power_electric
    FROM registered_cars AS cars
    JOIN cars_motor AS motor
    ON cars.plate = motor.plate 
    WHERE cars.price BETWEEN 25000 AND 50000
    GROUP BY 1,2
    HAVING power_electric IS NOT NULL
), cars_brands_power AS (
    SELECT cars_power.brand,
        cars_power.model,
        cars_power.power_fuel,
        cars_power.power_electric,
        ROUND(
                (cars_power.power_fuel +
                    cars_power.power_electric),
                0) AS total_power
    FROM cars_power
)


SELECT cars_brands_power.brand,
       cars_brands_power.model,
       ROUND(
        (cars_brands_power.power_electric /
                cars_brands_power.total_power) * 100
            , 1) AS power_electric_pct
FROM cars_brands_power
ORDER BY power_electric_pct DESC
LIMIT 5