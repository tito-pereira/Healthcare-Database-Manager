-- Triggers

--CREATE OR REPLACE TRIGGER nome_trigger
--BEFORE | AFTER
--INSERT | UPDATE | DELETE
--ON nome_tabela
--FOR EACH ROW
--BEGIN
     -- código
--END;

-- 1) trg_prescription_history	Registar alterações de prescrição
-- 2) trg_appointment_history	Registar alterações de consulta
-- 3) trg_appointment_payment	Validar pagamento/estado