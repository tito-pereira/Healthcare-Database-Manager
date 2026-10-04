-- DROP scripts for tables, indexes and views, for testing purposes
-- Highlight and click "Execute selected" or Ctrl+R

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
-- Highlight and click "Execute selected" or Ctrl+R

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