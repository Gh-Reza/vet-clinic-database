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

CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

-- Query multiple tables

-- Make the id column in animals table primary key and auto-increment
ALTER TABLE animals ADD COLUMN new_id SERIAL;
UPDATE TABLE animals SET new_id = id;
UPDATE animals SET new_id = id;
ALTER TABLE animals DROP COLUMN id;
ALTER TABLE animals RENAME new_id TO id;
ALTER TABLE animals ADD PRIMARY KEY (id);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species_id FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
	id SERIES PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	date_of_graduation DATE
);

CREATE TABLE specializations (
	species_id INT,
	vets_id INT,
	CONSTRAINT fk_species_id FOREIGN KEY(species_id) REFERENCES species(id),
	CONSTRAINT fk_vets_id FOREIGN KEY(vets_id) REFERENCES vets(id),
	PRIMARY KEY (species_id, vets_id)
);


