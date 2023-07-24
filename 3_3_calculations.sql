SELECT cars.brand,
       cars.model,
       ROUND(cars.tax / cars.price, 3) * 100 AS tax_pct
FROM registered_cars AS cars