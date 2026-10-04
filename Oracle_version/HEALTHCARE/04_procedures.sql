-- Procedures

--------------------------
-- 1) schedule_appointment
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
-- 2) complete_appointment	Completar consulta + pagamento
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

-- 3) cancel_appointment	Cancelar consulta

-- testar

CREATE OR REPLACE PROCEDURE complete_appointment (id_app NUMBER)
AS
BEGIN
     UPDATE Appointments A
     SET A.state_appointment = 'CANCELLED'
     WHERE A.id_appointment = id_app;
END;
/

-- 4) create_prescription	Criar prescrição
-- 5) suspend_prescription	Suspender prescrição