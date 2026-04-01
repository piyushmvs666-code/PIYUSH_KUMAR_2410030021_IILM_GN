-- FLEET MANAGEMENT SYSTEM (DBMS)
-- Create Database
CREATE DATABASE FleetManagement;
USE FleetManagement;
-- 1. VEHICLE TABLE

CREATE TABLE Vehicle (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_number VARCHAR(20) UNIQUE NOT NULL,
    type VARCHAR(50),
    model VARCHAR(50),
    capacity INT,
    status VARCHAR(20) -- Available, In Use, Maintenance
);
-- 2. DRIVER TABLE

CREATE TABLE Driver (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    license_number VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    experience INT
);
-- 3. ROUTE TABLE

CREATE TABLE Route (
    route_id INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(100),
    destination VARCHAR(100),
    distance DECIMAL(10,2)
);
-- 4. TRIP TABLE

CREATE TABLE Trip (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    driver_id INT,
    route_id INT,
    trip_date DATE,
    status VARCHAR(20), -- Completed, Ongoing, Cancelled
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (route_id) REFERENCES Route(route_id)
);

-- 5. MAINTENANCE TABLE

CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    service_date DATE,
    cost DECIMAL(10,2),
    description TEXT,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

-- INSERT SAMPLE DATA

-- Vehicles
INSERT INTO Vehicle (vehicle_number, type, model, capacity, status) VALUES
('DL01AB1234', 'Truck', 'Tata 407', 3000, 'Available'),
('DL02CD5678', 'Van', 'Mahindra Bolero', 1500, 'In Use'),
('DL03EF9012', 'Car', 'Swift Dzire', 500, 'Maintenance');

-- Drivers
INSERT INTO Driver (name, license_number, phone, experience) VALUES
('Raj Kumar', 'LIC12345', '9876543210', 5),
('Amit Sharma', 'LIC67890', '9123456780', 3),
('Suresh Yadav', 'LIC54321', '9988776655', 7);

-- Routes
INSERT INTO Route (source, destination, distance) VALUES
('Delhi', 'Agra', 233.5),
('Delhi', 'Jaipur', 281.2),
('Delhi', 'Chandigarh', 245.0);

-- Trips
INSERT INTO Trip (vehicle_id, driver_id, route_id, trip_date, status) VALUES
(1, 1, 1, '2026-04-01', 'Completed'),
(2, 2, 2, '2026-04-02', 'Ongoing'),
(3, 3, 3, '2026-04-03', 'Cancelled');

-- Maintenance
INSERT INTO Maintenance (vehicle_id, service_date, cost, description) VALUES
(3, '2026-03-20', 5000, 'Engine repair'),
(1, '2026-03-25', 2000, 'Oil change');

-- SAMPLE QUERIES

-- 1. View all vehicles
SELECT * FROM Vehicle;

-- 2. Get all drivers with experience > 4 years
SELECT * FROM Driver WHERE experience > 4;

-- 3. Join Trip details with Driver and Vehicle
SELECT 
    t.trip_id,
    v.vehicle_number,
    d.name AS driver_name,
    r.source,
    r.destination,
    t.trip_date,
    t.status
FROM Trip t
JOIN Vehicle v ON t.vehicle_id = v.vehicle_id
JOIN Driver d ON t.driver_id = d.driver_id
JOIN Route r ON t.route_id = r.route_id;

-- 4. Total maintenance cost per vehicle
SELECT 
    vehicle_id,
    SUM(cost) AS total_cost
FROM Maintenance
GROUP BY vehicle_id;

-- 5. Available vehicles
SELECT * FROM Vehicle WHERE status = 'Available';

-- 6. Count trips by status
SELECT status, COUNT(*) FROM Trip GROUP BY status;


-- END OF PROJECT
