CREATE TABLE VaccinationCenters (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(255)
);
CREATE TABLE Patients (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    vaccination_center_id INT,
    FOREIGN KEY (vaccination_center_id) REFERENCES VaccinationCenters(id)
);
CREATE TABLE Vaccines (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50)
);
CREATE TABLE HealthWorkers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    center_id INT,
    FOREIGN KEY (center_id) REFERENCES VaccinationCenters(id)
);
// data retreival //
SELECT *
FROM VaccinationCenters;
SELECT *
FROM Patients
WHERE vaccination_center_id = 1;
querries to analyze data
SELECT vaccination_center_id,
    COUNT(*) AS total_patients
FROM Patients
GROUP BY vaccination_center_id;