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
-- DROP VIEW Doctor_Revenue CASCADE CONSTRAINTS;
