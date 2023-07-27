SELECT cc.car_type, cc.color, cc.count
FROM 
    (SELECT car_type, color, COUNT(*) as count
     FROM registered_cars
     GROUP BY car_type, color) as cc,
    (SELECT car_type, MAX(count) as max_count
     FROM 
        (SELECT car_type, color, COUNT(*) as count
         FROM registered_cars
         GROUP BY car_type, color)
     GROUP BY car_type) as mcc
WHERE cc.car_type = mcc.car_type AND cc.count = mcc.max_count;