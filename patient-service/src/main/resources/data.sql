--
--
-- INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
-- VALUES
--     (RANDOM_UUID(), 'Juan dela Cruz', 'juan.delacruz@email.com', '123 Rizal St, Makati City', '1990-03-15', '2024-01-10'),
--     (RANDOM_UUID(), 'Maria Santos', 'maria.santos@email.com', '456 Bonifacio Ave, Taguig City', '1985-07-22', '2024-02-14'),
--     (RANDOM_UUID(), 'Carlos Reyes', 'carlos.reyes@email.com', '789 Mabini Blvd, Quezon City', '1995-11-08', '2024-03-01'),
--     (RANDOM_UUID(), 'Ana Gonzales', 'ana.gonzales@email.com', '321 Luna St, Pasig City', '1992-05-30', '2024-04-20'),
--     (RANDOM_UUID(), 'Jose Manalo', 'jose.manalo@email.com', '654 Aguinaldo Rd, Mandaluyong', '1988-09-12', '2024-05-05');


-- Ensure the 'patient' table exists (JPA PERSISTENCE)
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID         PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255) NOT NULL,
    date_of_birth   DATE         NOT NULL,
    registered_date DATE         NOT NULL
    );

-- Insert dummy patients (idempotent via WHERE NOT EXISTS)
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-abcd-ef1234567001',
       'Juan dela Cruz',
       'juan.delacruz@email.com',
       '123 Rizal St, Makati City',
       '1990-03-15',
       '2024-01-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567001');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-abcd-ef1234567002',
       'Maria Santos',
       'maria.santos@email.com',
       '456 Bonifacio Ave, Taguig City',
       '1985-07-22',
       '2024-02-14'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567002');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-abcd-ef1234567003',
       'Carlos Reyes',
       'carlos.reyes@email.com',
       '789 Mabini Blvd, Quezon City',
       '1995-11-08',
       '2024-03-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567003');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-abcd-ef1234567004',
       'Ana Gonzales',
       'ana.gonzales@email.com',
       '321 Luna St, Pasig City',
       '1992-05-30',
       '2024-04-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567004');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-abcd-ef1234567005',
       'Jose Manalo',
       'jose.manalo@email.com',
       '654 Aguinaldo Rd, Mandaluyong',
       '1988-09-12',
       '2024-05-05'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567005');