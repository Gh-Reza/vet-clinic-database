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

SELECT full_name, name FROM owners JOIN animals ON owners.id = animals.owner_id WHERE full_name = 'Melody Pond';
SELECT species.name, animals.name FROM species JOIN animals ON species.id = animals.species_id WHERE species.name = 'Pokemon';
SELECT full_name, name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(animals.name) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;
SELECT full_name AS owner, animals.name AS animals, species.name AS Type FROM animals JOIN species ON animals.species_id = species.id JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT full_name AS owner, animals.name AS animals, escape_attempt FROM owners JOIN animals ON owners.id = animals.owner_id WHERE escape_attempt = 0 AND full_name = 'Dean Winchester';
SELECT COUNT(name), full_name AS owner FROM owners JOIN animals ON owners.id = animals.owner_id GROUP BY full_name ORDER BY count DESC;

SELECT animals.name as animal, vets.name, date_of_visit FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON visits.vets_id = vets.id WHERE vets.name = 'William Tatcher' ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(visits.animals_id), vets.name FROM visits JOIN vets ON visits.vets_id = vets.id WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name; 
SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id = specializations.vets_id LEFT JOIN species ON specializations.species_id = species.id;
SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON  visits.vets_id = vets.id WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '2020-03-01' AND '2020-08-30';
SELECT animals.name, COUNT(animals.name) FROM animals JOIN visits ON animals.id = visits.animals_id GROUP BY animals.name ORDER BY count DESC LIMIT 1;
SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON visits.vets_id = vets.id WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit ASC LIMIT 1;
SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON visits.vets_id = vets.id ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(*)
FROM vets
JOIN visits ON vets.id = visits.vets_id
JOIN animals ON visits.animals_id = animals.id
LEFT JOIN specializations ON animals.species_id = specializations.species_id AND vets.id = specializations.vets_id
WHERE specializations.species_id IS NULL;
SELECT species.name AS specialty
FROM animals
JOIN visits ON animals.id = visits.animals_id
JOIN vets ON visits.vets_id = vets.id
JOIN species ON animals.species_id = species.id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
ORDER BY COUNT(*) DESC
LIMIT 1;
