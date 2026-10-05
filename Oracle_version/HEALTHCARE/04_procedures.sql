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

CREATE OR REPLACE PROCEDURE deactv_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET P.state_patient = 'INACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

CREATE OR REPLACE PROCEDURE reactv_patient (id_pat NUMBER)
AS
BEGIN
    UPDATE Patients P
    SET P.state_patient = 'ACTIVE'
    WHERE P.id_patient = id_pat;
END;
/

--SELECT * FROM Patients P ORDER BY P.name_patient;
--exec new_patient('Antoni Toni', DATE '1999-02-20', NULL);
--exec deactv_patient(11);
--exec reactv_patient(11);
--DELETE FROM Patients P WHERE P.id_patient = 11;
--rollback;

--CREATE OR REPLACE PROCEDURE patient_mngmt (flag VARCHAR2,
--    id_pat NUMBER, name_pat VARCHAR2, date_pat DATE, email_pat VARCHAR2)
--AS
--BEGIN
--    IF flag=0 THEN
--        deactv_patient(id_pat);
--    ELSIF flag=1 THEN
--        reactv_patient(name_pat, date_pat, email_pat);
--    ELSIF flag=2 THEN
--        new_patient(name_pat, date_pat, email_pat);
--    END IF;
--END;
--/

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

CREATE OR REPLACE PROCEDURE deactv_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET D.state_doctor = 'INACTIVE'
    WHERE D.id_doctor = id_doc;
END;
/

CREATE OR REPLACE PROCEDURE reactv_doctor (id_doc NUMBER)
AS
BEGIN
    UPDATE Doctors D
    SET D.state_doctor = 'ACTIVE'
    WHERE D.id_doctor = id_doc;
END;
/

--SELECT * FROM Doctors D ORDER BY D.name_doctor;
--exec new_doctor('Antoni Toni', DATE '1999-02-20', NULL);
--exec deactv_doctor(9);
--exec reactv_doctor(9);
--DELETE FROM Doctors D WHERE D.id_doctor = 9;
--rollback;

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

--select * from Appointments A where A.state_appointment = 'SCHEDULED'
--order by A.date_appointment DESC;
--rollback;
--EXEC schedule_appointment(1, 1, date '2026-10-01');
--select *
--from Appointments A
--where A.state_appointment = 'SCHEDULED';
--select *
--from Appointments A
--where A.state_appointment = 'COMPLETED';
--EXEC complete_appointment(8, 70);
--rollback;

--------------------------------------------------------------------------------
-- 4) Prescription Management
-- ACTIVE / SUSPENDED
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE create_prescription()
AS
BEGIN
    INSERT INTO Prescriptions
    VALUES ();
END;

CREATE OR REPLACE PROCEDURE suspend_prescription()
AS
BEGIN
END;