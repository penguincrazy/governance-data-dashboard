CREATE TABLE datasets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    source VARCHAR(255),
    time_coverage VARCHAR(100),
    geographic_coverage VARCHAR(255),
    methodology TEXT,
    limitations TEXT
);

CREATE TABLE dataset_variables (
    id SERIAL PRIMARY KEY,
    dataset_id INTEGER REFERENCES datasets(id),
    name VARCHAR(255) NOT NULL,
    definition TEXT,
    unit VARCHAR(100),
    data_type VARCHAR(100)
);
