CREATE TABLE providers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    specialty VARCHAR(255),
    zip_code VARCHAR(10),
    network VARCHAR(255)
);

CREATE INDEX idx_specialty ON providers(specialty);
CREATE INDEX idx_zip ON providers(zip_code);
CREATE INDEX idx_network ON providers(network);