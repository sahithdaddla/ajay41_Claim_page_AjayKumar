-- Create the `claims` table
CREATE TABLE claims (
    claim_id VARCHAR(20) PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_email VARCHAR(100),
    employee_id VARCHAR(10),
    department VARCHAR(50),
    claim_date DATE,
    amount DECIMAL(10,2),
    description TEXT,
    type VARCHAR(50),
    status VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Create the `documents` table
CREATE TABLE documents (
    id SERIAL PRIMARY KEY,
    claim_id VARCHAR(20) REFERENCES claims(claim_id) ON DELETE CASCADE,
    file_name VARCHAR(255),
    file_path VARCHAR(255),
    uploaded_at TIMESTAMP
);

