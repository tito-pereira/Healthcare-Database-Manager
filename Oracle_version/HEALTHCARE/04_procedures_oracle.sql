-- Procedures

--------------------------------------------------------------------------------
-- 1) Patient Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE new_patient
    (name_pat VARCHAR2, date_pat DATE, email_pat VARCHAR2)
AS
BEGIN
    INSERT INTO Patients
        (name_patient, date_birth_pat, email_patient, state_patient)
    VALUES (name_pat, date_pat, email_pat, 'ACTIVE');
END;
/

CREATE OR REPLACE PROCEDURE deactivate_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET P.state_patient = 'INACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

CREATE OR REPLACE PROCEDURE reactivate_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET P.state_patient = 'ACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

--------------------------------------------------------------------------------
-- 2) Doctor Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE new_doctor
    (name_doc VARCHAR2, date_doc DATE, email_doc VARCHAR2)
AS
BEGIN
    INSERT INTO Doctors
        (name_doctor, date_birth_doc, email_doctor, state_doctor)
    VALUES (name_doc, date_doc, email_doc, 'ACTIVE');
END;
/

CREATE OR REPLACE PROCEDURE deactivate_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET D.state_doctor = 'INACTIVE'
    WHERE D.id_doctor = id_doc;
END;
/

CREATE OR REPLACE PROCEDURE reactivate_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET D.state_doctor = 'ACTIVE'
    WHERE D.id_doctor = id_doc;
END;
/

--------------------------------------------------------------------------------
-- 3) Appointment Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE schedule_appointment
    (id_pat NUMBER, id_doc NUMBER, dt_app DATE)
AS
BEGIN
     INSERT INTO Appointments
        (id_patient, id_doctor, date_appointment, state_appointment, payment)
     VALUES (id_pat, id_doc, dt_app, 'SCHEDULED', NULL);
END;
/

CREATE OR REPLACE PROCEDURE complete_appointment (id_app NUMBER, pay NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET A.state_appointment = 'COMPLETED', A.payment = pay
     WHERE A.id_appointment = id_app;
END;
/

CREATE OR REPLACE PROCEDURE cancel_appointment (id_app NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET A.state_appointment = 'CANCELLED'
     WHERE A.id_appointment = id_app;
END;
/

--------------------------------------------------------------------------------
-- 4) Prescription Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE create_prescription
    (p_id NUMBER, p_med NUMBER, p_date DATE)
AS
BEGIN
    INSERT INTO Prescriptions
        (id_appointment, id_medication, date_presc, state_presc)
    VALUES (p_id, p_med, p_date, 'ACTIVE');
END;
/

CREATE OR REPLACE PROCEDURE suspend_prescription(id_presc NUMBER)
AS
BEGIN
    UPDATE Prescriptions P
    SET P.state_presc = 'SUSPENDED'
    WHERE P.id_prescription = id_presc;
END;
/
