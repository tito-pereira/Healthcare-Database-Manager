DROP TABLE Patients CASCADE CONSTRAINTS;
DROP TABLE Specialty CASCADE CONSTRAINTS;
DROP TABLE Doctors CASCADE CONSTRAINTS;
DROP TABLE Doctor_Specialty CASCADE CONSTRAINTS;
DROP TABLE Appointments CASCADE CONSTRAINTS;
DROP TABLE Medication CASCADE CONSTRAINTS;
DROP TABLE Prescriptions CASCADE CONSTRAINTS;
DROP TABLE Prescription_History CASCADE CONSTRAINTS;
DROP TABLE Appointment_History CASCADE CONSTRAINTS;

CREATE TABLE Patients (
	id_patient NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name_patient VARCHAR2(300) NOT NULL,
	date_birth_pat DATE NOT NULL,
	email_patient VARCHAR2(100)
);

CREATE TABLE Specialty (
  id_specialty NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name_specialty VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Doctors (
	id_doctor NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name_doctor VARCHAR2(300) NOT NULL,
	date_birth_doc DATE NOT NULL,
	email_doc VARCHAR2(100)
);

CREATE TABLE Doctor_Specialty (
  id_doctor NUMBER NOT NULL REFERENCES Doctors(id_doctor),
  id_specialty NUMBER NOT NULL REFERENCES Specialty(id_specialty),
  PRIMARY KEY (id_doctor, id_specialty)
);

CREATE TABLE Appointments (
	id_appointment NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	id_patient NUMBER NOT NULL REFERENCES Patients(id_patient),
	id_doctor NUMBER NOT NULL REFERENCES Doctors(id_doctor),
	date_appointment DATE NOT NULL,
	state_appointment VARCHAR2(20) NOT NULL,
  payment NUMBER(8,2)
);

CREATE TABLE Medication (
    id_medication NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name_medication VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Prescriptions (
    id_prescription NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_appointment NUMBER NOT NULL REFERENCES Appointments(id_appointment),
    id_medication NUMBER NOT NULL REFERENCES Medication(id_medication),
    date_presc DATE NOT NULL,
    state_presc VARCHAR2(20) NOT NULL
);

CREATE TABLE Prescription_History (
    id_presc_history NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_prescription NUMBER NOT NULL REFERENCES Prescriptions(id_prescription),
    old_state_presc VARCHAR2(20) NOT NULL,
    new_state_presc VARCHAR2(20) NOT NULL
);

CREATE TABLE Appointment_History (
    id_appoint_history NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_appointment NUMBER NOT NULL REFERENCES Appointments(id_appointment),
    old_state_appoint VARCHAR2(20) NOT NULL,
    new_state_appoint VARCHAR2(20) NOT NULL
);