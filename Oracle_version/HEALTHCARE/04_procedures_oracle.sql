-- Procedures

--------------------------------------------------------------------------------
-- 1) Patient Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE new_patient
    (name_pat VARCHAR2, date_pat DATE, gender_pat VARCHAR2, email_pat VARCHAR2)
AS
BEGIN
    INSERT INTO Patients
        (name_patient, date_birth_pat, gender_patient,
        email_patient, state_patient)
    VALUES (name_pat, date_pat, gender_pat, email_pat, 'ACTIVE');
END;
/

CREATE OR REPLACE PROCEDURE deactivate_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET state_patient = 'INACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

CREATE OR REPLACE PROCEDURE reactivate_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET state_patient = 'ACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

--------------------------------------------------------------------------------
-- 2) Doctor Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE new_doctor
    (name_doc VARCHAR2, date_doc DATE, gender_doc VARCHAR2, email_doc VARCHAR2)
AS
BEGIN
    INSERT INTO Doctors
        (name_doctor, date_birth_doc, gender_doctor, email_doctor, state_doctor)
    VALUES (name_doc, date_doc, gender_doc, email_doc, 'ACTIVE');
END;
/

CREATE OR REPLACE PROCEDURE deactivate_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET state_doctor = 'INACTIVE'
    WHERE D.id_doctor = id_doc;
END;
/

CREATE OR REPLACE PROCEDURE reactivate_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET state_doctor = 'ACTIVE'
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
     SET state_appointment = 'COMPLETED', payment = pay
     WHERE A.id_appointment = id_app;
END;
/

CREATE OR REPLACE PROCEDURE cancel_appointment (id_app NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET state_appointment = 'CANCELLED'
     WHERE A.id_appointment = id_app;
END;
/

--------------------------------------------------------------------------------
-- 4) Prescription Management
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE create_prescription
    (id_app NUMBER,id_med NUMBER, p_date DATE)
AS
    id_pat NUMBER; 
    total NUMBER;
BEGIN
    
    SELECT A.id_patient INTO id_pat
    FROM Appointments A
    WHERE A.id_appointment = id_app;
    
    SELECT COUNT(*) INTO total
    FROM Appointments A JOIN Prescriptions P ON
        A.id_appointment = P.id_appointment
        JOIN Medication M ON M.id_medication = P.id_medication
    WHERE A.id_patient = id_pat AND M.id_medication = id_med
        AND P.state_presc = 'ACTIVE';
    
    IF total = 0 THEN
        INSERT INTO Prescriptions
            (id_appointment, id_medication, date_presc, state_presc)
        VALUES (id_app, id_med, p_date, 'ACTIVE');
    ELSE
        RAISE_APPLICATION_ERROR( -20001,
            'Patient already has an active prescription for this medication.');
    END IF;
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20002, 'Appointment does not exist.');
END;
/

CREATE OR REPLACE PROCEDURE suspend_prescription(id_presc NUMBER)
AS
BEGIN
    UPDATE Prescriptions P
    SET state_presc = 'SUSPENDED'
    WHERE P.id_prescription = id_presc;
END;
/
