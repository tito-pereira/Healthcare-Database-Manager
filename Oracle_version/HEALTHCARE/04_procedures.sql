-- Procedures

--------------------------
-- 1) patient_management
--------------------------

-- testar ???
-- triggers de remover e adicionar no histórico?
SELECT *
FROM Patients P
ORDER BY P.name_patient;
rollback;
exec new_patient('Toni Toni', DATE '1999-02-20', NULL);
exec rmv_patient(11);

CREATE OR REPLACE PROCEDURE new_patient
    (name_pat VARCHAR2, date_pat DATE, email_pat VARCHAR2)
AS
BEGIN
    INSERT INTO Patients (name_patient, date_birth_pat, email_patient)
    VALUES (name_pat, date_pat, email_pat);
END;
/

CREATE OR REPLACE PROCEDURE rmv_patient (id_pat NUMBER)
AS
BEGIN
    DELETE FROM Patients P
    WHERE P.id_patient = id_pat;
END;
/

CREATE OR REPLACE PROCEDURE patient_mngmt (flag VARCHAR2,
    id_pat NUMBER, name_pat VARCHAR2, date_pat DATE, email_pat VARCHAR2)
AS
BEGIN
    IF flag=0 THEN
        rmv_patient(id_pat);
    ELSIF flag=1 THEN
        new_patient(name_pat, date_pat, email_pat);
    END IF;
END;
/

--------------------------
-- 2) doctor__management
--------------------------

-- testar ???

CREATE OR REPLACE PROCEDURE new_doctor
    (name_doc VARCHAR2, date_doc DATE, email_doc VARCHAR2)
AS
BEGIN
    INSERT INTO Doctors (name_doctor, date_birth_doc, email_doc)
    VALUES (name_doc, date_doc, email_doc);
END;
/

CREATE OR REPLACE PROCEDURE rmv_doctor (id_doc NUMBER)
AS
BEGIN
    DELETE FROM Doctors D
    WHERE D.id_doctor = id_doc;
END;
/

--------------------------
-- 3) schedule_appointment
--------------------------

--select *
--from Appointments A
--where A.state_appointment = 'SCHEDULED'
--order by A.date_appointment DESC;
--rollback;
--EXEC schedule_appointment(1, 1, date '2026-10-01');

CREATE OR REPLACE PROCEDURE schedule_appointment
    (id_pat NUMBER, id_doc NUMBER, dt_app DATE)
AS
BEGIN
     INSERT INTO Appointments
        (id_patient, id_doctor, date_appointment, state_appointment, payment)
     VALUES (id_pat, id_doc, dt_app, 'SCHEDULED', NULL);
END;
/

--------------------------
-- 4) complete_appointment
--------------------------

--select *
--from Appointments A
--where A.state_appointment = 'SCHEDULED';
--select *
--from Appointments A
--where A.state_appointment = 'COMPLETED';
--EXEC complete_appointment(8, 70);
--rollback;

CREATE OR REPLACE PROCEDURE complete_appointment (id_app NUMBER, pay NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET A.state_appointment = 'COMPLETED', A.payment = pay
     WHERE A.id_appointment = id_app;
END;
/

--------------------------
-- 5) complete_appointment
--------------------------

-- testar ???

CREATE OR REPLACE PROCEDURE complete_appointment (id_app NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET A.state_appointment = 'CANCELLED'
     WHERE A.id_appointment = id_app;
END;
/

-- 6) create_prescription	Criar prescrição

CREATE OR REPLACE PROCEDURE create_prescription()
AS
BEGIN
    INSERT INTO Prescriptions
    VALUES ();
END;
-- 7) suspend_prescription	Suspender prescrição