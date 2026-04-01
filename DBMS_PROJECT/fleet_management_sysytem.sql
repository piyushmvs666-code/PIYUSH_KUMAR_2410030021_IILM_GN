-- ================================
-- FLEET MANAGEMENT SYSTEM DATABASE
-- ================================

-- Create Database
CREATE DATABASE fleet_management;
USE fleet_management;

-- ================================
-- TABLE: Drivers
-- ================================
CREATE TABLE Drivers (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    license_number VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(15),
    experience_years INT
);

-- ================================
-- TABLE: Vehicles
-- ================================
CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_number VARCHAR(20) UNIQUE NOT NULL,
    model VARCHAR(50),
    capacity INT,
    status VARCHAR(20) DEFAULT 'Available'
);

-- ================================
-- TABLE: Trips
-- ================================
CREATE TABLE Trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    driver_id INT,
    start_location VARCHAR(100),
    end_location VARCHAR(100),
    distance_km DECIMAL(10,2),
    trip_date DATE,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),
    FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id)
);

-- ================================
-- TABLE: Fuel Logs
-- ================================
CREATE TABLE Fuel_Logs (
    fuel_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    fuel_date DATE,
    liters DECIMAL(10,2),
    cost DECIMAL(10,2),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

-- ================================
-- TABLE: Maintenance
-- ================================
CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    maintenance_date DATE,
    description VARCHAR(255),
    cost DECIMAL(10,2),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

-- ================================
-- INSERT SAMPLE DATA
-- ================================

-- Drivers
INSERT INTO Drivers (name, license_number, phone, experience_years) VALUES
('Piyush Kumar', 'DL12345', '9876543210', 5),
('Rahul Sharma', 'DL67890', '9123456780', 3),
('Amit Verma', 'DL54321', '9988776655', 7);

-- Vehicles
INSERT INTO Vehicles (vehicle_number, model, capacity, status) VALUES
('DL01AB1234', 'Tata Truck', 1000, 'Available'),
('DL02CD5678', 'Mahindra Pickup', 800, 'In Use'),
('DL03EF9012', 'Ashok Leyland', 1200, 'Available');

-- Trips
INSERT INTO Trips (vehicle_id, driver_id, start_location, end_location, distance_km, trip_date) VALUES
(1, 1, 'Delhi', 'Noida', 25.5, '2026-04-01'),
(2, 2, 'Delhi', 'Gurgaon', 30.0, '2026-04-02'),
(3, 3, 'Delhi', 'Faridabad', 35.0, '2026-04-03');

-- Fuel Logs
INSERT INTO Fuel_Logs (vehicle_id, fuel_date, liters, cost) VALUES
(1, '2026-04-01', 20, 2000),
(2, '2026-04-02', 25, 2500),
(3, '2026-04-03', 30, 3000);

-- Maintenance
INSERT INTO Maintenance (vehicle_id, maintenance_date, description, cost) VALUES
(1, '2026-03-28', 'Oil Change', 1500),
(2, '2026-03-29', 'Brake Repair', 3000),
(3, '2026-03-30', 'Engine Check', 5000);

-- ================================
-- USEFUL QUERIES
-- ================================

-- 1. View all drivers
SELECT * FROM Drivers;

-- 2. View all vehicles
SELECT * FROM Vehicles;

-- 3. Trip details with driver & vehicle
SELECT 
    t.trip_id,
    d.name AS driver_name,
    v.vehicle_number,
    t.start_location,
    t.end_location,
    t.distance_km,
    t.trip_date
FROM Trips t
JOIN Drivers d ON t.driver_id = d.driver_id
JOIN Vehicles v ON t.vehicle_id = v.vehicle_id;

-- 4. Total fuel cost per vehicle
SELECT 
    v.vehicle_number,
    SUM(f.cost) AS total_fuel_cost
FROM Fuel_Logs f
JOIN Vehicles v ON f.vehicle_id = v.vehicle_id
GROUP BY v.vehicle_number;

-- 5. Maintenance cost per vehicle
SELECT 
    v.vehicle_number,
    SUM(m.cost) AS total_maintenance_cost
FROM Maintenance m
JOIN Vehicles v ON m.vehicle_id = v.vehicle_id
GROUP BY v.vehicle_number;

-- 6. Total distance traveled by each vehicle
SELECT 
    v.vehicle_number,
    SUM(t.distance_km) AS total_distance
FROM Trips t
JOIN Vehicles v ON t.vehicle_id = v.vehicle_id
GROUP BY v.vehicle_number;
