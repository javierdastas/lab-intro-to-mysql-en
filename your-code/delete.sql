-- delete.sql
USE cars;

-- Delete duplicate data from cars table
DELETE FROM Cars
WHERE car_id = 5 AND vin = 'DAM41UDN3CHU2WVF6';
