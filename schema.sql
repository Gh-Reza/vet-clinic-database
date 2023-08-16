/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
	id INT,
	name VARCHAR(50),
	date_of_birth DATE,
	escape_attempt INT,
	neutered BOOLEAN,
	weight DECIMAL
);

ALTER TABLE animals ADD species varchar(255);

CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(50),
	age INT
);