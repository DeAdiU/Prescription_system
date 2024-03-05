CREATE DATABASE prescription_system;

USE prescription_system;

CREATE TABLE Patient( P_id int, gender char(10) NOT NULL, phone bigint NOT NULL, allergy char(20) NOT NULL, DOB date NOT NULL, PRIMARY KEY(P_id));

CREATE TABLE Doctor(License_id INT PRIMARY KEY, D_name char(20) NOT NULL, Experience int NOT NULL, Major char(20) NOT NULL);

CREATE TABLE Prescriptions(P_no int PRIMARY KEY AUTO_INCREMENT, DOV date NOT NULL, validity int(3), remark char, P_id int, Doc_id int, FOREIGN KEY(P_id) REFERENCES Patient(P_id), FOREIGN KEY(Doc_id) REFERENCES Doctor(License_id));

ALTER TABLE Prescriptions MODIFY COLUMN P_id int NOT NULL;

ALTER TABLE Prescriptions MODIFY COLUMN remark varchar(50);

CREATE TABLE Company( License_id int, man_location char(20), name char(50) NOT NULL, PRIMARY KEY(License_id));

CREATE TABLE medicine( drug_id int NOT NULL PRIMARY KEY, name char(30) NOT NULL, trade_name char(70), company_id int, FOREIGN KEY(company_id) REFERENCES Company(License_id));

CREATE TABLE prescription_medicine ( P_no int NOT NULL, drug_id int NOT NULL, doses int(3) NOT NULL, day int(3) NOT NULL, FOREIGN KEY(drug_id) REFERENCES medicine(drug_id), FOREIGN KEY(P_no) REFERENCES Prescriptions(P_no));

CREATE TABLE Drug_store( store_id int NOT NULL, drug_id int NOT NULL, availability int, PRIMARY KEY(store_id), FOREIGN KEY(drug_id) REFERENCES medicine(drug_id));



