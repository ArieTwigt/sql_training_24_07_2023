-- Create a set that only contains the classes for ”Mercedes-Benz”
SELECT cars.brand,
       cars.model
FROM registered_cars AS cars
WHERE cars.brand = "MERCEDES-BENZ" 
