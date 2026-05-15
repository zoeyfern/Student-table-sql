-- Student Table Schema
-- This file contains the SQL schema for managing student records

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    enrollment_date DATE NOT NULL,
    gpa DECIMAL(3, 2) CHECK (gpa >= 0 AND gpa <= 4.0),
    status ENUM('active', 'inactive', 'graduated') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create index for faster queries
CREATE INDEX idx_email ON students(email);
CREATE INDEX idx_last_name ON students(last_name);
CREATE INDEX idx_status ON students(status);

-- Sample data (optional)
INSERT INTO students (first_name, last_name, email, phone, date_of_birth, enrollment_date, gpa, status) 
VALUES 
    ('John', 'Smith', 'john.smith@university.edu', '555-0101', '2004-03-15', '2022-09-01', 3.85, 'active'),
    ('Sarah', 'Johnson', 'sarah.johnson@university.edu', '555-0102', '2003-07-22', '2022-09-01', 3.92, 'active'),
    ('Michael', 'Williams', 'michael.williams@university.edu', '555-0103', '2005-01-10', '2023-09-01', 3.65, 'active');
