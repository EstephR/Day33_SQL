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

-- All Bus Routes with Stops
SELECT routes.route_id as "Route Number", mapping.bus_stop_number as "Bus Stop", bus_station.station_name as "Station Name" FROM routes
JOIN mapping on routes.route_id = mapping.fk_route_id
JOIN bus_station on bus_station.order_number = mapping.fk_bus_station_id
ORDER BY routes.route_id ASC;

--Only Bus Route 3 with Stops
SELECT routes.route_id as "Route Number", mapping.bus_stop_number as "Bus Stop", bus_station.station_name as "Station Name" FROM routes
JOIN mapping on routes.route_id = mapping.fk_route_id
JOIN bus_station on bus_station.order_number = mapping.fk_bus_station_id
WHERE routes.route_id = "3";

-- See which Station is the First Stop (or any rank) of the route
SELECT routes.route_id as "Route Number", routes.distance as "Distance", mapping.bus_stop_number as "Bus Stop", bus_station.station_name as "Station Name" FROM routes
Left JOIN mapping on routes.route_id = mapping.fk_route_id
RIGHT JOIN bus_station on bus_station.order_number = mapping.fk_bus_station_id;

-- Overview of Bus Stations with Contact details
SELECT cities.city_name as "City", bus_station.station_name as "Station",  bus_station.station_address as "Address", bus_station.station_phone as "Phone Number" FROM bus_station
JOIN cities on cities.city_id = bus_station.city_id;

-- Overview of Bus Stations of Vienna with Contact details sorted alphabetically
SELECT cities.city_name as "City", bus_station.station_name as "Station",  bus_station.station_address as "Address", bus_station.station_phone as "Phone Number" FROM bus_station
JOIN cities on cities.city_id = bus_station.city_id
WHERE cities.city_name LIKE "VIENNA"
ORDER BY bus_station.station_name ASC;