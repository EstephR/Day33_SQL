-- Which Drivers have which Buses
SELECT fname as "Driver First Name", lname as "Driver Last Name", licence_plate_number as "Licence Plate", model_brand as "Bus Brand", model_type as "Bus Type" FROM buses
JOIN bus_models on bus_model_id = model
JOIN drivers on drivers.driver_id = buses.driver_id;

-- Update Which Drivers have MAN buses and drive which Routes 
SELECT fname as "Driver First Name", lname as "Driver Last Name", licence_plate_number as "Licence Plate", model_brand as "Bus Brand", model_type as "Bus Type", route_ID as "Route Number" FROM buses
JOIN bus_models on bus_model_id = model
JOIN drivers on drivers.driver_id = buses.driver_id
JOIN routes on routes.fk_buses_id = buses.buses_id
WHERE model_brand LIKE "MAN";