-- ============================================
-- INICIAL POPULATION OF THE DATABASE
-- We will have 10 patients, 8 doctors, 6 specialties,
-- doctor-specialty relations, 25 appointments, 15 prescriptions
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

INSERT ALL
    INTO Specialty (name_specialty)
    VALUES ('Cardiology')
    INTO Specialty (name_specialty)
    VALUES ('Dermatology')
    INTO Specialty (name_specialty)
    VALUES ('Pediatrics')
    INTO Specialty (name_specialty)
    VALUES ('Neurology')
    INTO Specialty (name_specialty)
    VALUES ('Orthopedics')
    INTO Specialty (name_specialty)
    VALUES ('General Medicine')
SELECT 1 FROM dual;


-- ============================================
-- PATIENTS
-- ============================================

INSERT ALL
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('James Roberts', DATE '1974-04-11', 'james.roberts74@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Emma Wilson', DATE '1992-08-23', 'emma.wilson92@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Michael Thompson', DATE '1986-11-05', 'michael.thompson86@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Grace Walker', DATE '2001-03-17', 'grace.walker01@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Robert Harris', DATE '1978-09-29', 'robert.harris78@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Sophie Clark', DATE '1995-12-12', 'sophie.clark95@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Thomas Lewis', DATE '1983-04-07', 'thomas.lewis83@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Emily Walker', DATE '1999-06-21', 'emily.walker99@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('David Turner', DATE '1969-12-03', 'david.turner69@gmail.com')
    INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES ('Charlotte White', DATE '1988-01-26', 'charlotte.white88@gmail.com')
SELECT 1 FROM dual;

-- ============================================
-- DOCTORS
-- ============================================

INSERT ALL
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('James Anderson', DATE '1966-07-14', 'james.anderson66@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Emily Johnson', DATE '1975-03-28', 'emily.johnson75@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('William Taylor', DATE '1982-10-16', 'william.taylor82@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Charlotte Brown', DATE '1990-04-09', 'charlotte.brown90@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Daniel Wilson', DATE '1978-11-22', 'daniel.wilson78@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Sarah Miller', DATE '1985-06-18', 'sarah.miller85@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Thomas Davis', DATE '1972-02-09', 'thomas.davis72@gmail.com')
    INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES ('Olivia Martin', DATE '1988-11-30', 'olivia.martin88@gmail.com')
SELECT 1 FROM dual;

-- ============================================
-- DOCTOR_SPECIALTY
-- ============================================

INSERT ALL
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (1, 1)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (1, 6)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (2, 2)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (3, 3)  
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (3, 6)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (4, 4)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (5, 5)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (6, 1)   
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (6, 6)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (7, 5)  
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (7, 4)
    INTO Doctor_Specialty (id_doctor, id_specialty)
    VALUES (8, 2)
SELECT 1 FROM dual;


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

INSERT ALL
    INTO Medication (name_medication)
    VALUES ('Paracetamol')
    INTO Medication (name_medication)
    VALUES ('Ibuprofen')
    INTO Medication (name_medication)
    VALUES ('Amoxicillin')
    INTO Medication (name_medication)
    VALUES ('Omeprazole')
    INTO Medication (name_medication)
    VALUES ('Metformin')
    INTO Medication (name_medication)
    VALUES ('Cetirizine')
    INTO Medication (name_medication)
    VALUES ('Atorvastatin')
    INTO Medication (name_medication)
    VALUES ('Aspirin')
    INTO Medication (name_medication)
    VALUES ('Diclofenac')
    INTO Medication (name_medication)
    VALUES ('Azithromycin')
SELECT 1 FROM dual;


-- ============================================
-- APPOINTMENTS
-- ============================================

INSERT ALL
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (1, 1, DATE '2026-09-01', 'COMPLETED', 65.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (2, 2, DATE '2026-09-02', 'COMPLETED', 55.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (3, 3, DATE '2026-09-03', 'COMPLETED', 60.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (4, 4, DATE '2026-09-04', 'CANCELLED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (5, 5, DATE '2026-09-05', 'COMPLETED', 70.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (1, 2, DATE '2026-09-06', 'COMPLETED', 55.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (6, 3, DATE '2026-09-08', 'COMPLETED', 60.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (7, 4, DATE '2026-09-09', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (8, 5, DATE '2026-09-10', 'COMPLETED', 70.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (9, 1, DATE '2026-09-11', 'COMPLETED', 65.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (10, 2, DATE '2026-09-12', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (2, 3, DATE '2026-09-13', 'COMPLETED', 60.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (3, 4, DATE '2026-09-15', 'CANCELLED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (5, 1, DATE '2026-09-16', 'COMPLETED', 65.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (6, 5, DATE '2026-09-17', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (7, 2, DATE '2026-09-18', 'COMPLETED', 55.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (8, 3, DATE '2026-09-19', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (9, 4, DATE '2026-09-20', 'COMPLETED', 60.00)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (10, 5, DATE '2026-09-21', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (1, 3, DATE '2026-09-22', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (4, 1, DATE '2026-09-23', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (5, 4, DATE '2026-09-24', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (2, 5, DATE '2026-09-25', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (6, 1, DATE '2026-09-26', 'SCHEDULED', NULL)
    INTO Appointments (id_patient, id_doctor, date_appointment, state_appointment, payment)
    VALUES (10, 2, DATE '2026-09-27', 'SCHEDULED', NULL)
SELECT 1 FROM dual;


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

INSERT ALL
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (1, 1, DATE '2026-09-01', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (2, 2, DATE '2026-09-02', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (3, 3, DATE '2026-09-03', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (5, 4, DATE '2026-09-05', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (6, 5, DATE '2026-09-06', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (7, 1, DATE '2026-09-08', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (9, 6, DATE '2026-09-10', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (10, 7, DATE '2026-09-11', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (12, 2, DATE '2026-09-13', 'SUSPENDED')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (14, 3, DATE '2026-09-16', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (16, 4, DATE '2026-09-18', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (18, 1, DATE '2026-09-20', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (18, 5, DATE '2026-09-20', 'ACTIVE')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (18, 6, DATE '2026-09-20', 'SUSPENDED')
    INTO Prescriptions (id_appointment, id_medication, date_presc, state_presc)
    VALUES (18, 7, DATE '2026-09-20', 'ACTIVE')
SELECT 1 FROM dual;


-- ============================================
-- PRESCRIPTION HISTORY
-- ============================================

INSERT ALL
    INTO Prescription_History
        (id_prescription, old_state_presc, new_state_presc)
    VALUES (9, 'ACTIVE', 'SUSPENDED')
    INTO Prescription_History
        (id_prescription, old_state_presc, new_state_presc)
    VALUES (14, 'ACTIVE', 'SUSPENDED')
    INTO Prescription_History
        (id_prescription, old_state_presc, new_state_presc)
    VALUES (14, 'SUSPENDED', 'ACTIVE')
SELECT 1 FROM dual;


-- ============================================
-- APPOINTMENT HISTORY
-- ============================================

INSERT ALL
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (4, 'SCHEDULED', 'CANCELLED')
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (8, 'SCHEDULED', 'COMPLETED')
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (13, 'SCHEDULED', 'CANCELLED')
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (15, 'SCHEDULED', 'COMPLETED')
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (17, 'SCHEDULED', 'COMPLETED')
    INTO Appointment_History
        (id_appointment, old_state_appoint, new_state_appoint)
    VALUES (19, 'SCHEDULED', 'COMPLETED')
SELECT 1 FROM dual;


COMMIT;