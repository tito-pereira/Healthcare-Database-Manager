-- ============================================
-- VIEWS AND INDEXES
-- ============================================


-- ============================================
-- 1) Scheduled_Appointments
-- ============================================

CREATE INDEX idx_state_appointment
ON Appointments(state_appointment);

CREATE VIEW Scheduled_Appointments AS
SELECT
    P.name_patient,
    D.name_doctor,
    A.date_appointment
FROM Appointments A
JOIN Patients P ON A.id_patient = P.id_patient
JOIN Doctors D ON A.id_doctor = D.id_doctor
WHERE A.state_appointment = 'SCHEDULED';


-- ============================================
-- 2) Patient_Appointment_History
-- ============================================

CREATE INDEX idx_name_patient
ON Patients(name_patient);

CREATE VIEW Patient_Appointment_History AS
SELECT
    P.name_patient,
    A.date_appointment,
    A.state_appointment
FROM Appointments A
JOIN Patients P ON A.id_patient = P.id_patient
ORDER BY P.name_patient;


-- ============================================
-- 3) Active_Prescriptions
-- ============================================

CREATE INDEX idx_state_presc
ON Prescriptions(state_presc);

CREATE VIEW Active_Prescriptions AS
SELECT
    P.name_patient,
    M.name_medication
FROM Patients P
JOIN Appointments A ON P.id_patient = A.id_patient
JOIN Prescriptions PR ON A.id_appointment = PR.id_appointment
JOIN Medication M ON PR.id_medication = M.id_medication
WHERE PR.state_presc = 'ACTIVE'
ORDER BY P.name_patient;


-- ============================================
-- 4) Doctor_Specialties
-- ============================================

CREATE INDEX idx_name_doctor
ON Doctors(name_doctor);

CREATE VIEW Doctor_Specialties AS
SELECT
    D.name_doctor,
    S.name_specialty
FROM Doctors D
JOIN Doctor_Specialty DS ON D.id_doctor = DS.id_doctor
JOIN Specialty S ON DS.id_specialty = S.id_specialty
ORDER BY D.name_doctor;


-- ============================================
-- 5) Doctor_Revenue
-- ============================================

CREATE VIEW Doctor_Revenue AS
SELECT
    D.name_doctor,
    SUM(A.payment) AS total_revenue,
    AVG(A.payment) AS average_revenue
FROM Doctors D
JOIN Appointments A ON D.id_doctor = A.id_doctor
GROUP BY D.name_doctor
ORDER BY average_revenue DESC;