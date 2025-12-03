USE pharmacy_testing;
INSERT INTO doctor(doctor_id, name, dob)
VALUES
(1, 'Hiro Tanaka', '1981-07-14'),
(2, 'Elena Petrova', '1993-01-30'),
(3, 'Marcus O’Donnell', '1972-04-09'),
(4, 'Gabriela Santos', '1985-10-21'),
(5, 'Nikolai Ivanov', '1978-02-16'),
(6, 'Priya Raman', '1991-06-05'),
(7, 'Arjun Patel', '1975-08-29'),
(8, 'Clara Johansson', '1988-11-02'),
(9, 'Michael Chen', '1992-05-17'),
(10, 'Sophia Martinez', '1985-03-24'), 
(11, 'Daniel OBrien', '1990-09-08');

INSERT into pharmacist(pharmacist_id, name, dob)
VALUES
(1, 'Hai Bui', '1980-01-01'),
(2, 'Noah Basa', '1965-02-05'),
(3, 'Daniel Barbati', '1977-05-11'),
(4, 'Maria Esposito', '1982-09-23'),
(5, 'Leonard Grayson', '1969-12-04'),
(6, 'Sofia Martel', '1990-03-17'),
(7, 'Olivia Patel', '1987-12-15'), 
(8, 'Ethan Rodriguez', '1995-07-22'), 
(9, 'Ava Thompson', '1989-01-30'),
(10, 'Lucas Kim', '1993-06-11');

INSERT into patient(patient_id, name, dob,balance, doctor_id, primary_address)
VALUES
(1, 'Nolan Le', '2004-02-02', 98.70, 7, '123 Holly Circle'),
(2, 'Jeremy Matloub', '2004-07-20', 52.00, 1, '456 Buckthorn Court'),
(3, 'Payton Lin', '2001-01-01', 169.45, 3, '72 Rose Drive'),
(4, 'Samantha Wang',  '2007-08-23', 0, 2, '80 Moonstone Ln'),
(5, 'Marcus Chen', '2003-04-12', 147.82, 11, '42 Riverside Dr'), 
(6, 'Emily Rodriguez', '1998-11-30', 203.45, 7, '156 Oak Street'),
(7, 'James Patterson', '2005-06-15', 89.67, 5, '29 Maple Ave'),
(8, 'Sofia Gonzalez', '2001-09-08', 256.91, 3, '93 Pine Ridge Rd'),
(9, 'David Kim', '2006-02-27', 112.34, 9, '67 Cedar Court'),
(10, 'Isabella Martinez', '1999-12-05', 178.53, 10, '14 Birch Lane'),
(11, 'Ryan OSullivan', '2004-07-19', 294.76, 5, '201 Willow Way'),
(12, 'Aisha Patel', '2002-03-14', 45.28, 4, '88 Elmwood Dr'),
(13, 'Tyler Brooks', '2008-10-22', 167.89, 8, '135 Sunset Blvd'),
(14, 'Mia Thompson', '2000-05-31', 221.15, 2, '76 Highland Ave'),
(15, 'Nathan Lee', '2007-01-17', 133.62, 1, '49 Valley View Rd');

INSERT INTO PatientHistory(patient_id, allergies, family_history, notes)
VALUES
(1, 'Peanuts shellfish', 'Type I diabetes', 'N/A'),
(2, 'N/A', 'N/A', 'N/A'),
(3, 'Gluten', 'breast cancer', 'allergy flare up'),
(4, 'Tomatoes', 'Color blindness', 'N/A'),
(5, 'Peanuts', 'Diabetes', 'Requires EpiPen'),
(6, 'Shellfish', 'Heart disease', 'N/A'),
(7, 'Dairy', 'Asthma', 'Lactose intolerant'),
(8, 'Tree nuts', 'Hypertension', 'Carries inhaler'),
(9, 'Eggs', 'Cancer', 'N/A'),
(10, 'Soy', 'Alzheimer\'s', 'Vegetarian diet preferred'),
(11, 'Wheat', 'Arthritis', 'Gluten-free required'),
(12, 'Fish', 'Depression', 'N/A'),
(13, 'Sesame', 'Kidney disease', 'Low sodium diet'),
(14, 'Latex', 'Osteoporosis', 'Avoid latex gloves'),
(15, 'Penicillin', 'Thyroid disorder', 'Medication allergy noted');

INSERT INTO drug(drug_id, name, common_ailment)
VALUES
(1, 'Lisinopril', 'High blood pressure'),
(2, 'Metformin', 'Type 2 diabetes'),
(3, 'Atorvastatin', 'High cholesterol'),
(4, 'Sertraline', 'Depression and anxiety'),
(5, 'Omeprazole', 'Acid reflux'),
(6, 'Levothyroxine', 'Hypothyroidism'),
(7, 'Hydroxyzine', 'Allergic reactions'),
(8, 'Amlodipine', 'Hypertension'),
(9, 'Albuterol', 'Asthma'),
(10, 'Gabapentin', 'Nerve pain'),
(11, 'Losartan', 'Blood pressure control'),
(12, 'Escitalopram', 'Anxiety disorder'),
(13, 'Montelukast', 'Allergies and asthma'),
(14, 'Pantoprazole', 'GERD'),
(15, 'Fluoxetine', 'Depression');

INSERT INTO pharmacy(pharmacy_id, address, name)
VALUES
(1, '12 Kimble Road', 'Rite Aid'),
(2, '50 William Penn Highway', 'Giant Eagle'),
(3, '3 Wible Road', 'Walgreens'),
(4, '870 Royal Boulevard', 'Walmart'),
(5, '3495 Palmer Court', 'Your Local Pharm'),
(6, '1842 Oakwood Avenue', 'MediCare Pharmacy'),
(7, '567 Maple Street', 'HealthFirst Drugs'),
(8, '2103 Riverside Drive', 'Corner Drugstore'),
(9, '89 Highland Boulevard', 'Wellness Pharmacy'),
(10, '4521 Cedar Lane', 'Community Health Pharm');

INSERT into prescriptions(prescript_id, patient_id, doctor_id, drug_id, dosage)
VALUES
(1, 3, 5, 2, 25),
(2, 1, 1, 13, 35),
(3, 2, 1, 12, 25),
(4, 4, 2, 11, 50),
(5, 7, 2, 10, 75),
(6, 5, 3, 8, 10),
(7, 6, 3, 8, 15),
(8, 9, 5, 7, 20),
(9, 10, 5, 6, 30),
(10, 15, 6, 5, 40),
(11, 13, 6, 4, 25),
(12, 12, 7, 3, 100),
(13, 5, 8, 2, 50),
(14, 4, 9, 1, 50);

INSERT INTO orders(order_id, request_date, pharmacy_id, patient_id, prescript_id, pharmacist_id, status)
VALUES
(1, '2025-10-10', 2, 12, 12, 10, 'Scheduled'),
(2, '2025-04-20', 1, 4, 14, 1, 'Completed'),
(3, '2025-06-11', 3, 5, 13, 3, 'Completed'),
(4, '2025-02-05', 7, 13, 11, 5, 'Scheduled'),
(5, '2025-07-18', 4, 15, 10, 7, 'Scheduled'),
(6, '2025-01-01', 6, 10, 9, 8, 'Completed'),
(7, '2025-05-05', 5, 9, 8, 4, 'Completed'),
(8, '2025-11-07', 10, 6, 7, 9, 'Completed'),
(9, '2025-03-03', 9, 5, 6, 2, 'Completed'),
(10, '2025-12-12', 8, 7, 5, 10, 'Completed'),
(11, '2025-08-09', 1, 4, 4, 8, 'Completed'),
(12, '2025-09-08', 10, 2, 3, 7, 'Scheduled'),
(13, '2025-02-27', 9, 1, 2, 4, 'Completed'),
(14, '2025-12-06', 4, 3, 1, 5, 'Scheduled'),
(15, '2025-11-14', 5, 1, 2, 2, 'Scheduled');