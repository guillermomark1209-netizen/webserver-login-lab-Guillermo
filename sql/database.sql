-- Create table
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

INSERT INTO users (username, password, fullname) VALUES
('Mark', '$2y$12$NiL6EP3zisPwat4ejkiEXeHczQhZq.lVYdmntTnQpSLxOEiYVXk8y', 'Mark'),
('Kyle', '$2y$12$n362nLPpYZ1m.ZAMfsOTT.1BTyAfAL8rYdSxcjDn0S48QeC9VG5Am', 'Kyle'),
('Kram', '$2y$12$OasX6PzoTDS7zoIrAWohd.Ax7DeNvoKbFjKuPqokr8JcWzM2bLUgG', 'Kram')
ON CONFLICT (username) DO UPDATE SET
    password = EXCLUDED.password,
    fullname = EXCLUDED.fullname;
