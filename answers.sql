CREATE DATABASE Answers;
 USE Answers;

 CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(255) ,
    last_name VARCHAR(255),
	date_of_birth DATE,
    gender VARCHAR(255),
    language VARCHAR(255)
);

CREATE TABLE Visit(
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
provider_id INT,
date_of_visit DATE,
date_scheduled DATE ,
visit_department_id INT,
visit_type VARCHAR(255),
blood_pressure_systollic INT,
blood_pressure_diastollic INT,
pulse DECIMAL,
 visit_status VARCHAR(255)
 );
 
 CREATE TABLE Providers(
 provider_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR (255),
 last_name VARCHAR (255),
 provider_speciality VARCHAR(255),
 email_address VARCHAR(255),
 phone_number VARCHAR(255),
 date_joined DATE
 );
 
 CREATE TABLE Ed_visits(
 visit_id INT PRIMARY KEY AUTO_INCREMENT,
 patient_id INT ,
 acuity INT NOT NULL,
 reason_for_visit VARCHAR(255),
 disposition VARCHAR(255)
 );
 
 CREATE TABLE Admissions(
 admission_id INT PRIMARY KEY AUTO_INCREMENT,
 patient_id INT,
 admission_date DATE,
 discharge_date DATE,
 discharge_disposition VARCHAR (255),
 service VARCHAR(255),
 primary_diagnosis VARCHAR (255)
 );
 
CREATE TABLE Discharges(
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admission_date DATE,
discharge_date DATE,
discharge_disposition VARCHAR (255),
service VARCHAR (255),
primary_diagnosis VARCHAR(255)
);
 