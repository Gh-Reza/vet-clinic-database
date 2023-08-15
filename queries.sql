/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT * from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT * from animals WHERE neutered = true AND escape_attempt < 3;

SELECT date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempt from animals WHERE weight > 10.5;

SELECT * FROM animals WHERE neutered = true;

SELECT * FROM animals WHERE NOT name = 'Gabumon';

SELECT * FROM animals WHERE weight >= 10.4 AND weight <= 17.3;

-- Transactions

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT first_savepoint;
UPDATE animals SET weight = weight * -1;
ROLLBACK TO SAVEPOINT first_savepoint;
UPDATE animals SET weight = weight * -1 WHERE weight < 0;
COMMIT;

-- Queries for questions

SELECT COUNT(*) FROM animals; 
SELECT COUNT(*) FROM animals WHERE escape_attempt = 0; 
SELECT AVG(weight) AS weight_average FROM animals; 
SELECT neutered, MAX(escape_attempt) FROM animals GROUP BY neutered; 
SELECT neutered, MAX(weight) as max_weight, MIN(weight) as min_weight FROM animals GROUP BY neutered; 
SELECT neutered, AVG(escape_attempt) AS avg_escape_attempt FROM animals WHERE date_of_birth > '1990-01-01' AND date_of_birth < '2000-01-01' GROUP BY neutered; 

