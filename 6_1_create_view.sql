CREATE VIEW hybrid_cars AS 

WITH cars_power AS (
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

SELECT cars_power.plate,
       cars_power.brand,
       cars_power.power_fuel,
       cars_power.power_electric,
       cars_power.power_fuel + 
          cars_power.power_electric AS total_power
FROM cars_power
