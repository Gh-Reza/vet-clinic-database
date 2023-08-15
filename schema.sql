/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
	id INT,
	name VARCHAR(50),
	date_of_birth DATE,
	escape_attempt INT,
	neutered BOOLEAN,
	weight DECIMAL
);