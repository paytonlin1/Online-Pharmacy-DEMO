-- CREATE SCHEMA pharmacy;--
USE pharmacy_testing;
CREATE table doctor
	(doctor_id INT,
	name VARCHAR(30),
	dob DATE,
    PRIMARY KEY(doctor_id));

CREATE table pharmacist
	(pharmacist_id INT,
	name VARCHAR(30),
	dob DATE,
    PRIMARY KEY(pharmacist_id));
    
CREATE table Patient
	(patient_id INT,
	name VARCHAR(30),
	dob date,
	balance FLOAT(0),
	doctor_id INT,
	primary_address VARCHAR(100),
	PRIMARY KEY(patient_id), 
	FOREIGN KEY(doctor_id) 
		references doctor);

CREATE table PatientHistory
	(patient_id INT,
	allergies VARCHAR(200),
    family_history VARCHAR(200),
	notes VARCHAR(200),
	PRIMARY KEY(patient_id), 
    FOREIGN KEY(patient_id) 
		references Patient);

CREATE table prescriptions
	(prescript_id INT,
	patient_id INT,
	doctor_id INT,
    drug_id INT,
	dosage INT,
    PRIMARY KEY(prescript_id),
    FOREIGN KEY(patient_id) 
		references Patient,
	FOREIGN KEY(doctor_id)
		references doctor);

CREATE table drug
	(drug_id INT,
	name VARCHAR(50),
	common_ailment VARCHAR(200));

CREATE table pharmacy
	(pharmacy_id INT,
	address VARCHAR(100),
	name VARCHAR(100),
	PRIMARY KEY(pharmacy_id));

CREATE table orders
	(order_id INT,
	request_date DATE,
	pharmacy_id INT,
	patient_id INT,
	prescript_id INT,
	pharmacist_id INT,
	status ENUM('Cancelled', 'Scheduled', 'Completed'),
    PRIMARY KEY(order_id),
    FOREIGN KEY(pharmacy_id)
		references pharmacy,
    FOREIGN KEY(patient_id)
		references Patient,
    FOREIGN KEY(prescript_id)
		references prescriptions,
    FOREIGN KEY(pharmacist_id)
		references pharmacist);
        



