DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars; 
USE cars;

-- Table Cars
CREATE TABLE IF NOT EXISTS cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20)
);

-- Table Customers
CREATE TABLE IF NOT EXISTS customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(5) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(10)
);

-- Table Salespersons
CREATE TABLE IF NOT EXISTS salespersons (
	salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(5) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

-- Table Invoices
CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(9) NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

