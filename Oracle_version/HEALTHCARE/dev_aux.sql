-- DROP scripts for tables, indexes and views, for testing purposes
-- Highlight and click "Run Statement" or Ctrl+Enter

-- Drop Tables

DROP TABLE Appointment_History CASCADE CONSTRAINTS;
DROP TABLE Prescription_History CASCADE CONSTRAINTS;
DROP TABLE Prescriptions CASCADE CONSTRAINTS;
DROP TABLE Appointments CASCADE CONSTRAINTS;
DROP TABLE Doctor_Specialty CASCADE CONSTRAINTS;
DROP TABLE Medication CASCADE CONSTRAINTS;
DROP TABLE Doctors CASCADE CONSTRAINTS;
DROP TABLE Patients CASCADE CONSTRAINTS;
DROP TABLE Specialty CASCADE CONSTRAINTS;

-- Drop Indexes

DROP INDEX idx_state_appointment;
DROP INDEX idx_name_patient;
DROP INDEX idx_state_prescription;
DROP INDEX idx_name_doctor;

-- Drop Views

DROP VIEW Scheduled_Appointments CASCADE CONSTRAINTS;
DROP VIEW Patient_Appointment_History CASCADE CONSTRAINTS;
DROP VIEW Active_Prescriptions CASCADE CONSTRAINTS;
DROP VIEW Doctor_Specialties CASCADE CONSTRAINTS;
DROP VIEW Doctor_Revenue CASCADE CONSTRAINTS;

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- SELECT scripts for tables, views and indexes for demonstration purposes
-- Highlight and click "Run Statement" or Ctrl+Enter

-- Show all Tables populated:

SELECT * FROM Appointment_History;
SELECT * FROM Prescription_History;
SELECT * FROM Prescriptions; 
SELECT * FROM Appointments;
SELECT * FROM Doctor_Specialty;
SELECT * FROM Medication; 
SELECT * FROM Doctors;
SELECT * FROM Patients;
SELECT * FROM Specialty;

-- Show all Views:

SELECT * FROM Scheduled_Appointments;
SELECT * FROM Patient_Appointment_History;
SELECT * FROM Active_Prescriptions;
SELECT * FROM Doctor_Specialties;
SELECT * FROM Doctor_Revenue;

--select * from Prescriptions;
--select * from Prescription_History;
--select * from Appointments;
--select * from Appointment_History;


--SELECT * FROM Patients P ORDER BY P.name_patient;
--exec new_patient('Antoni Toni', DATE '1999-02-20', NULL);
--exec deactv_patient(11);
--exec reactv_patient(11);
--DELETE FROM Patients P WHERE P.id_patient = 11;
--rollback;

--SELECT * FROM Doctors D ORDER BY D.name_doctor;
--exec new_doctor('Antoni Toni', DATE '1999-02-20', NULL);
--exec deactv_doctor(9);
--exec reactv_doctor(9);
--DELETE FROM Doctors D WHERE D.id_doctor = 9;
--rollback;

--select * from Appointments A where A.state_appointment = 'SCHEDULED'
--    order by A.date_appointment DESC;
--select * from Appointments A where A.state_appointment = 'COMPLETED'
--    order by A.date_appointment DESC;
--select * from Appointments A where A.state_appointment = 'CANCELLED'
--    order by A.date_appointment DESC;
--exec schedule_appointment(1, 1, date '2026-10-01');
--exec complete_appointment(26, 70);
--exec cancel_appointment(26);
--rollback;

--select * from Prescriptions P order by P.date_presc desc;
--exec create_prescription(1, 1, date '2026-10-01');
--select * from Prescriptions P order by P.date_presc desc;
--exec suspend_prescription(16);
--select * from Prescriptions P order by P.date_presc desc;
--rollback;
--delete from Prescriptions P where P.id_prescription = 16;
--rollback;
