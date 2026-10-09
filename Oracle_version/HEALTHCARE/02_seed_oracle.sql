-- ============================================
-- INITIAL POPULATION OF THE DATABASE
-- We will have 10 patients, 8 doctors, 6 specialties,
-- doctor-specialty relations, 25 appointments, 16 prescriptions
-- and some historical records.
-- ============================================


-- ============================================
-- SPECIALTY
-- Orthodontics
-- Pediatric Dentistry
-- Prosthodontics
-- Endodontics
-- Periodontology
-- Oral Surgery
-- ============================================

INSERT INTO Specialty (name_specialty)
VALUES ('Orthodontics');

INSERT INTO Specialty (name_specialty)
VALUES ('Pediatric Dentistry');

INSERT INTO Specialty (name_specialty)
VALUES ('Prosthodontics');

INSERT INTO Specialty (name_specialty)
VALUES ('Endodontics');

INSERT INTO Specialty (name_specialty)
VALUES ('Periodontology');

INSERT INTO Specialty (name_specialty)
VALUES ('Oral Surgery');

-- ============================================
-- PATIENTS
-- ============================================

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('James Roberts', DATE '1974-04-11', 'MALE',
    'james.roberts74@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Emma Wilson', DATE '1992-08-23', 'FEMALE',
    'emma.wilson92@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Michael Thompson', DATE '1986-11-05', 'MALE',
    'michael.thompson86@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Grace Walker', DATE '2001-03-17', 'FEMALE',
    'grace.walker01@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Robert Harris', DATE '1978-09-29', 'MALE',
    'robert.harris78@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Sophie Clark', DATE '1995-12-12', 'FEMALE',
    'sophie.clark95@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Thomas Lewis', DATE '1983-04-07', 'MALE',
    'thomas.lewis83@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Emily Walker', DATE '1999-06-21', 'FEMALE',
    'emily.walker99@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('David Turner', DATE '1969-12-03', 'MALE',
    'david.turner69@gmail.com', 'ACTIVE');

INSERT INTO Patients
    (name_patient, date_birth_pat, gender_patient, email_patient, state_patient)
VALUES
    ('Charlotte White', DATE '1988-01-26', 'FEMALE',
    'charlotte.white88@gmail.com', 'ACTIVE');


-- ============================================
-- DOCTORS
-- ============================================

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('James Anderson', DATE '1966-07-14', 'MALE',
    'james.anderson66@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Emily Johnson', DATE '1975-03-28', 'FEMALE',
    'emily.johnson75@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('William Taylor', DATE '1982-10-16', 'MALE',
    'william.taylor82@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Charlotte Brown', DATE '1990-04-09', 'FEMALE',
    'charlotte.brown90@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Daniel Wilson', DATE '1978-11-22', 'MALE',
    'daniel.wilson78@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Sarah Miller', DATE '1985-06-18', 'FEMALE',
    'sarah.miller85@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Thomas Davis', DATE '1972-02-09', 'MALE',
    'thomas.davis72@gmail.com', 'ACTIVE');

INSERT INTO Doctors
    (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
VALUES
    ('Olivia Martin', DATE '1988-11-30', 'FEMALE',
    'olivia.martin88@gmail.com', 'ACTIVE');

-- ============================================
-- DOCTOR_SPECIALTY
-- ============================================

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (1, 1);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (1, 6);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (2, 2);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (3, 3);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (3, 6);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (4, 4);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (5, 5);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (6, 1);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (6, 6);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (7, 5);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (7, 4);

INSERT INTO Doctor_Specialty (id_doctor, id_specialty)
VALUES (8, 2);


-- ============================================
-- MEDICATION
-- Paracetamol
-- Ibuprofen
-- Amoxicillin
-- Omeprazole
-- Metformin
-- Cetirizine
-- Atorvastatin
-- Aspirin
-- Diclofenac
-- Azithromycin
-- ============================================

INSERT INTO Medication (name_medication)
VALUES ('Paracetamol');

INSERT INTO Medication (name_medication)
VALUES ('Ibuprofen');

INSERT INTO Medication (name_medication)
VALUES ('Amoxicillin');

INSERT INTO Medication (name_medication)
VALUES ('Omeprazole');

INSERT INTO Medication (name_medication)
VALUES ('Metformin');

INSERT INTO Medication (name_medication)
VALUES ('Cetirizine');

INSERT INTO Medication (name_medication)
VALUES ('Atorvastatin');

INSERT INTO Medication (name_medication)
VALUES ('Aspirin');

INSERT INTO Medication (name_medication)
VALUES ('Diclofenac');

INSERT INTO Medication (name_medication)
VALUES ('Azithromycin');


-- ============================================
-- APPOINTMENTS
-- ============================================

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (1, 1, DATE '2026-09-01', 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 2, DATE '2026-09-02', 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (3, 3, DATE '2026-09-03', 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (4, 4, DATE '2026-09-04', 'CANCELLED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 5, DATE '2026-09-05', 'COMPLETED', 70.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (1, 2, DATE '2026-09-06', 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 3, DATE '2026-09-08', 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (7, 4, DATE '2026-09-09', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (8, 5, DATE '2026-09-10', 'COMPLETED', 70.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (9, 1, DATE '2026-09-11', 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 2, DATE '2026-09-12', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 3, DATE '2026-09-13', 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (3, 4, DATE '2026-09-15', 'CANCELLED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 1, DATE '2026-09-16', 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 5, DATE '2026-09-17', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (7, 2, DATE '2026-09-18', 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (8, 3, DATE '2026-09-19', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (9, 4, DATE '2026-09-20', 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 5, DATE '2026-09-21', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (1, 3, DATE '2026-09-22', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (4, 1, DATE '2026-09-23', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 4, DATE '2026-09-24', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 5, DATE '2026-09-25', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 1, DATE '2026-09-26', 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 2, DATE '2026-09-27', 'SCHEDULED', NULL);


-- ============================================
-- PRESCRIPTIONS
--
-- Medication IDs:
-- 1  Paracetamol
-- 2  Ibuprofen
-- 3  Amoxicillin
-- 4  Omeprazole
-- 5  Metformin
-- 6  Cetirizine
-- 7  Atorvastatin
-- 8  Aspirin
-- 9  Diclofenac
-- 10 Azithromycin
-- ============================================

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (1, 1, DATE '2026-09-01', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (2, 2, DATE '2026-09-02', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (3, 3, DATE '2026-09-03', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (5, 4, DATE '2026-09-05', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (6, 5, DATE '2026-09-06', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (7, 1, DATE '2026-09-08', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (9, 6, DATE '2026-09-10', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (10, 7, DATE '2026-09-11', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (12, 2, DATE '2026-09-13', 'SUSPENDED');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (14, 3, DATE '2026-09-16', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (16, 4, DATE '2026-09-18', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 1, DATE '2026-09-20', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 5, DATE '2026-09-20', 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 6, DATE '2026-09-20', 'SUSPENDED');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 7, DATE '2026-09-20', 'ACTIVE');


-- ============================================
-- PRESCRIPTION HISTORY
-- ============================================

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (1, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (2, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (3, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (4, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (5, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (6, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (7, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (8, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (9, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (9, 'ACTIVE', 'SUSPENDED');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (10, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (11, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (12, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (13, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (14, NULL, 'ACTIVE');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (14, 'ACTIVE', 'SUSPENDED');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (15, NULL, 'ACTIVE');

-- ============================================
-- APPOINTMENT HISTORY
-- Initial simulated state changes
-- ============================================

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (1, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (2, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (3, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (4, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (5, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (6, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (7, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (9, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (10, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (12, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (13, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (14, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (16, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES (18, NULL, 'SCHEDULED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (1, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (2, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (3, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (4, 'SCHEDULED', 'CANCELLED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (5, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (6, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (7, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (9, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (10, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (12, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (13, 'SCHEDULED', 'CANCELLED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (14, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (16, 'SCHEDULED', 'COMPLETED');

INSERT INTO Appointment_History
    (id_appointment, old_state_appoint, new_state_appoint)
VALUES
    (18, 'SCHEDULED', 'COMPLETED');


COMMIT;