-- Vou usar 10 utentes, 5 médicos, 25 consultas e 15 prescrições.

-- ============================================
-- UTENTES
-- ============================================

INSERT ALL
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Jose Rodrigues', DATE '1974-04-11', 'joserodrigues74@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Mariana Costa', DATE '1992-08-23', 'marianacosta92@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Pedro Martins', DATE '1986-11-05', 'pedromartins86@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Ines Ferreira', DATE '2001-03-17', 'inesferreira01@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Ricardo Almeida', DATE '1978-09-29', 'ricardoalmeida78@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Sofia Mendes', DATE '1995-12-12', 'sofiamendes95@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Tiago Carvalho', DATE '1983-04-07', 'tiagocarvalho83@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Beatriz Santos', DATE '1999-06-21', 'beatrizsantos99@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Miguel Pereira', DATE '1969-12-03', 'miguelpereira69@gmail.com')
    INTO Utentes (nome_utente, data_nasc_ut, email_ut)
    VALUES ('Carolina Lopes', DATE '1988-01-26', 'carolinalopes88@gmail.com')
SELECT 1 FROM dual;

-- ============================================
-- MEDICOS
-- ============================================

INSERT ALL
    INTO Medicos (nome_medico, data_nasc_med, email_med)
    VALUES ('Antonio Variacoes', DATE '1966-07-14', 'avariacoes66@gmail.com')
    INTO Medicos (nome_medico, data_nasc_med, email_med)
    VALUES ('Helena Duarte', DATE '1975-03-28', 'helenaduarte75@gmail.com')
    INTO Medicos (nome_medico, data_nasc_med, email_med)
    VALUES ('Bruno Teixeira', DATE '1982-10-16', 'brunoteixeira82@gmail.com')
    INTO Medicos (nome_medico, data_nasc_med, email_med)
    VALUES ('Catarina Ribeiro', DATE '1990-04-09', 'catarinaribeiro90@gmail.com')
    INTO Medicos (nome_medico, data_nasc_med, email_med)
    VALUES ('Daniel Monteiro', DATE '1978-11-22', 'danielmonteiro78@gmail.com')
SELECT 1 FROM dual;

-- ============================================
-- CONSULTAS
-- ============================================

INSERT ALL
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (1, 1, DATE '2026-09-01', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (2, 2, DATE '2026-09-02', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (3, 3, DATE '2026-09-03', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (4, 4, DATE '2026-09-04', 'CANCELADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (5, 5, DATE '2026-09-05', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (1, 2, DATE '2026-09-06', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (6, 3, DATE '2026-09-08', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (7, 4, DATE '2026-09-09', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (8, 5, DATE '2026-09-10', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (9, 1, DATE '2026-09-11', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (10, 2, DATE '2026-09-12', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (2, 3, DATE '2026-09-13', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (3, 4, DATE '2026-09-15', 'CANCELADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (5, 1, DATE '2026-09-16', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (6, 5, DATE '2026-09-17', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (7, 2, DATE '2026-09-18', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (8, 3, DATE '2026-09-19', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (9, 4, DATE '2026-09-20', 'REALIZADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (10, 5, DATE '2026-09-21', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (1, 3, DATE '2026-09-22', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (4, 1, DATE '2026-09-23', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (5, 4, DATE '2026-09-24', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (2, 5, DATE '2026-09-25', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (6, 1, DATE '2026-09-26', 'AGENDADA')
    INTO Consultas (id_utente, id_medico, data_consulta, estado_consulta)
    VALUES (10, 2, DATE '2026-09-27', 'AGENDADA')
SELECT 1 FROM dual;

-- ============================================
-- PRESCRICOES
-- ============================================

INSERT ALL
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Paracetamol', DATE '2026-09-01', 1, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Ibuprofeno', DATE '2026-09-02', 2, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Amoxicilina', DATE '2026-09-03', 3, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Omeprazol', DATE '2026-09-05', 5, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Metformina', DATE '2026-09-06', 6, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Paracetamol', DATE '2026-09-08', 7, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Cetirizina', DATE '2026-09-10', 9, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Atorvastatina', DATE '2026-09-11', 10, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Ibuprofeno', DATE '2026-09-13', 12, 'SUSPENSA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Amoxicilina', DATE '2026-09-16', 14, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Omeprazol', DATE '2026-09-18', 16, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Paracetamol', DATE '2026-09-20', 18, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Metformina', DATE '2026-09-20', 18, 'ATIVA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Cetirizina', DATE '2026-09-20', 18, 'SUSPENSA')
    INTO Prescricoes (nome_presc, data_presc, id_consulta, presc_estado)
    VALUES ('Atorvastatina', DATE '2026-09-20', 18, 'ATIVA')
SELECT 1 FROM dual;