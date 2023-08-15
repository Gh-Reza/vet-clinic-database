/* Populate database with sample data. */
-- Inserts one row
INSERT INTO animals (id, name, date_of_birth, escape_attempt, neutered, weight) VALUES (1, 'Agumon', '2020-02-03', 0, true, 10.23);

-- Inserts multiple rows
INSERT INTO animals (
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight
)
VALUES (
	2,
	'Gabumon',
	'2018-11-15',
	2,
	true,
	8
),
(
	3,
	'Pikachu',
	'2021-01-07',
	1,
	false,
	15.4
),
(
	4,
	'Devimon',
	'2017-05-12',
	5,
	true,
	11
)