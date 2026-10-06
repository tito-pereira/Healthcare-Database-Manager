-- Triggers

--------------------------------------------------------------------------------
-- 1) Prescription History Triggers
-- (id_prescription, old_state_presc, new_state_presc)
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER trig_new_prescription
AFTER INSERT ON Prescriptions
FOR EACH ROW
BEGIN
    IF :NEW.state_presc='ACTIVE' THEN
        INSERT INTO Prescription_History
            (id_prescription, old_state_presc, new_state_presc)
        VALUES (:NEW.id_prescription, NULL, :NEW.state_presc);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trig_susp_prescription
AFTER UPDATE ON Prescriptions
FOR EACH ROW
BEGIN
    IF :NEW.state_presc='SUSPENDED' THEN
        INSERT INTO Prescription_History
            (id_prescription, old_state_presc, new_state_presc)
        VALUES (:NEW.id_prescription, :OLD.state_presc, :NEW.state_presc);
    END IF;
END;
/

--------------------------------------------------------------------------------
-- 2) Appointment History Triggers
-- (id_appointment, old_state_appoint, new_state_appoint)
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER trig_new_appointment
AFTER INSERT ON Appointments
FOR EACH ROW
BEGIN
    IF :NEW.state_appointment='SCHEDULED' THEN
        INSERT INTO Appointment_History
            (id_appointment, old_state_appoint, new_state_appoint)
        VALUES (:NEW.id_appointment, NULL, :NEW.state_appointment);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trig_end_appointment
AFTER UPDATE ON Appointments
FOR EACH ROW
BEGIN
    IF :NEW.state_appointment IN ('CANCELLED', 'COMPLETED') THEN
        INSERT INTO Appointment_History
            (id_appointment, old_state_appoint, new_state_appoint)
        VALUES (:NEW.id_appointment, :OLD.state_appointment,
            :NEW.state_appointment);
    END IF;
END;
/
