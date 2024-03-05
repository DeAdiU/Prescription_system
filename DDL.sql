CREATE DATABASE prescription_system;

USE prescription_system;

CREATE TABLE Patient( P_id int, gender char(10) NOT NULL, phone bigint NOT NULL, allergy char(20) NOT NULL, DOB date NOT NULL, PRIMARY KEY(P_id));

CREATE TABLE Doctor(License_id INT PRIMARY KEY, D_name char(20) NOT NULL, Experience int NOT NULL, Major char(20) NOT NULL);

CREATE TABLE Prescriptions
  
