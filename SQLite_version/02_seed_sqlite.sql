-- ============================================
-- INITIAL POPULATION OF THE DATABASE
-- We will have 10 patients, 8 doctors, 6 specialties,
-- doctor-specialty relations, 25 appointments, 16 prescriptions
-- and some historical records.
-- ============================================


-- ============================================
-- SPECIALTY
-- Cardiology
-- Dermatology
-- Pediatrics
-- Neurology
-- Orthopedics
-- General Medicine
-- ============================================

INSERT INTO Specialty (name_specialty)
VALUES ('Cardiology');

INSERT INTO Specialty (name_specialty)
VALUES ('Dermatology');

INSERT INTO Specialty (name_specialty)
VALUES ('Pediatrics');

INSERT INTO Specialty (name_specialty)
VALUES ('Neurology');

INSERT INTO Specialty (name_specialty)
VALUES ('Orthopedics');

INSERT INTO Specialty (name_specialty)
VALUES ('General Medicine');


-- ============================================
-- PATIENTS
-- ============================================

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('James Roberts', 19740411, 'james.roberts74@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Emma Wilson', 19920823, 'emma.wilson92@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Michael Thompson', 19861105,
        'michael.thompson86@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Grace Walker', 20010317, 'grace.walker01@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Robert Harris', 19780929, 'robert.harris78@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Sophie Clark', 19951212, 'sophie.clark95@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Thomas Lewis', 19830407, 'thomas.lewis83@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Emily Walker', 19990621, 'emily.walker99@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('David Turner', 19691203, 'david.turner69@gmail.com');

INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
VALUES ('Charlotte White', 19880126, 'charlotte.white88@gmail.com');


-- ============================================
-- DOCTORS
-- ============================================

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('James Anderson', 19660714, 'james.anderson66@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Emily Johnson', 19750328, 'emily.johnson75@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('William Taylor', 19821016, 'william.taylor82@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Charlotte Brown', 19900409, 'charlotte.brown90@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Daniel Wilson', 19781122, 'daniel.wilson78@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Sarah Miller', 19850618, 'sarah.miller85@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Thomas Davis', 19720209, 'thomas.davis72@gmail.com');

INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
VALUES ('Olivia Martin', 19881130, 'olivia.martin88@gmail.com');


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
    (1, 1, 20260901, 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 2, 20260902, 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (3, 3, 20260903, 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (4, 4, 20260904, 'CANCELLED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 5, 20260905, 'COMPLETED', 70.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (1, 2, 20260906, 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 3, 20260908, 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (7, 4, 20260909, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (8, 5, 20260910, 'COMPLETED', 70.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (9, 1, 20260911, 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 2, 20260912, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 3, 20260913, 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (3, 4, 20260915, 'CANCELLED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 1, 20260916, 'COMPLETED', 65.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 5, 20260917, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (7, 2, 20260918, 'COMPLETED', 55.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (8, 3, 20260919, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (9, 4, 20260920, 'COMPLETED', 60.00);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 5, 20260921, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (1, 3, 20260922, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (4, 1, 20260923, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (5, 4, 20260924, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (2, 5, 20260925, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (6, 1, 20260926, 'SCHEDULED', NULL);

INSERT INTO Appointments
    (id_patient, id_doctor, date_appointment, state_appointment, payment)
VALUES
    (10, 2, 20260927, 'SCHEDULED', NULL);


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
    (1, 1, 20260901, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (2, 2, 20260902, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (3, 3, 20260903, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (5, 4, 20260905, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (6, 5, 20260906, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (7, 1, 20260908, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (9, 6, 20260910, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (10, 7, 20260911, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (12, 2, 20260913, 'SUSPENDED');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (14, 3, 20260916, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (16, 4, 20260918, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 1, 20260920, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 5, 20260920, 'ACTIVE');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 6, 20260920, 'SUSPENDED');

INSERT INTO Prescriptions
    (id_appointment, id_medication, date_presc, state_presc)
VALUES
    (18, 7, 20260920, 'ACTIVE');


-- ============================================
-- PRESCRIPTION HISTORY
-- ============================================

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (9, 'ACTIVE', 'SUSPENDED');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (14, 'ACTIVE', 'SUSPENDED');

INSERT INTO Prescription_History
    (id_prescription, old_state_presc, new_state_presc)
VALUES
    (14, 'SUSPENDED', 'ACTIVE');


-- ============================================
-- APPOINTMENT HISTORY
-- Initial simulated state changes
-- ============================================

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