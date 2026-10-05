-- Triggers

-- CREATE OR REPLACE TRIGGER nome_trigger
-- BEFORE | AFTER
-- INSERT | UPDATE | DELETE
-- ON nome_tabela
-- FOR EACH ROW
-- BEGIN
     -- código
-- END;

-- 1) trg_prescription_history	Registar alterações de prescrição
-- (id_prescription, old_state_presc, new_state_presc)

CREATE OR REPLACE TRIGGER trig_prescription
AFTER INSERT ON Prescriptions
FOR EACH ROW
BEGIN
    INSERT INTO Prescription_History
        (id_prescription, old_state_presc, new_state_presc)
    VALUES ();
END;

-- fazer NULL o old state, e alterar a seed

-- 2) trg_appointment_history	Registar alterações de consulta
-- (id_appointment, old_state_appoint, new_state_appoint)

-- 3) trg_appointment_payment	Validar pagamento/estado










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