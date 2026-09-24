-- Vou usar 10 utentes, 5 médicos, 25 consultas e 15 prescrições.

-- ============================================
-- UTENTES
-- ============================================

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (1, 'Jose Rodrigues', 19740411, 'joserodrigues74@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (2, 'Mariana Costa', 19920823, 'marianacosta92@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (3, 'Pedro Martins', 19861105, 'pedromartins86@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (4, 'Ines Ferreira', 20010317, 'inesferreira01@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (5, 'Ricardo Almeida', 19780929, 'ricardoalmeida78@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (6, 'Sofia Mendes', 19951212, 'sofiamendes95@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (7, 'Tiago Carvalho', 19830407, 'tiagocarvalho83@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (8, 'Beatriz Santos', 19990621, 'beatrizsantos99@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (9, 'Miguel Pereira', 19691203, 'miguelpereira69@gmail.com');

INSERT INTO Utentes (id_utente, nome_utente, data_nasc_ut, email_ut)
VALUES (10, 'Carolina Lopes', 19880126, 'carolinalopes88@gmail.com');


-- ============================================
-- MEDICOS
-- ============================================

INSERT INTO Medicos (id_medico, nome_medico, data_nasc_med, email_med)
VALUES
	(1, 'Antonio Variacoes', 19660714, 'avariacoes66@gmail.com'),
	(2, 'Helena Duarte', 19750328, 'helenaduarte75@gmail.com'),
	(3, 'Bruno Teixeira', 19821016, 'brunoteixeira82@gmail.com'),
	(4, 'Catarina Ribeiro', 19900409, 'catarinaribeiro90@gmail.com'),
	(5, 'Daniel Monteiro', 19781122, 'danielmonteiro78@gmail.com');

-- ============================================
-- CONSULTAS
-- ============================================

INSERT INTO Consultas
(id_consulta, id_utente, id_medico, data_consulta, estado_consulta)
VALUES
    (1, 1, 1, 20260901, 'REALIZADA'),
    (2, 2, 2, 20260902, 'REALIZADA'),
    (3, 3, 3, 20260903, 'REALIZADA'),
    (4, 4, 4, 20260904, 'CANCELADA'),
    (5, 5, 5, 20260905, 'REALIZADA'),
    (6, 1, 2, 20260906, 'REALIZADA'),
    (7, 6, 3, 20260908, 'REALIZADA'),
    (8, 7, 4, 20260909, 'AGENDADA'),
    (9, 8, 5, 20260910, 'REALIZADA'),
    (10, 9, 1, 20260911, 'REALIZADA'),
    (11, 10, 2, 20260912, 'AGENDADA'),
    (12, 2, 3, 20260913, 'REALIZADA'),
    (13, 3, 4, 20260915, 'CANCELADA'),
    (14, 5, 1, 20260916, 'REALIZADA'),
    (15, 6, 5, 20260917, 'AGENDADA'),
    (16, 7, 2, 20260918, 'REALIZADA'),
    (17, 8, 3, 20260919, 'AGENDADA'),
    (18, 9, 4, 20260920, 'REALIZADA'),
    (19, 10, 5, 20260921, 'AGENDADA'),
    (20, 1, 3, 20260922, 'AGENDADA'),
    (21, 4, 1, 20260923, 'AGENDADA'),
    (22, 5, 4, 20260924, 'AGENDADA'),
    (23, 2, 5, 20260925, 'AGENDADA'),
    (24, 6, 1, 20260926, 'AGENDADA'),
    (25, 10, 2, 20260927, 'AGENDADA');


-- ============================================
-- PRESCRICOES
-- ============================================

INSERT INTO Prescricoes
(id_presc, nome_presc, data_presc, id_consulta, presc_estado)
VALUES
    (1, 'Paracetamol', 20260901, 1, 'ATIVA'),
    (2, 'Ibuprofeno', 20260902, 2, 'ATIVA'),
    (3, 'Amoxicilina', 20260903, 3, 'ATIVA'),
    (4, 'Omeprazol', 20260905, 5, 'ATIVA'),
    (5, 'Metformina', 20260906, 6, 'ATIVA'),
    (6, 'Paracetamol', 20260908, 7, 'ATIVA'),
    (7, 'Cetirizina', 20260910, 9, 'ATIVA'),
    (8, 'Atorvastatina', 20260911, 10, 'ATIVA'),
    (9, 'Ibuprofeno', 20260913, 12, 'SUSPENSA'),
    (10, 'Amoxicilina', 20260916, 14, 'ATIVA'),
    (11, 'Omeprazol', 20260918, 16, 'ATIVA'),
    (12, 'Paracetamol', 20260920, 18, 'ATIVA'),
    (13, 'Metformina', 20260920, 18, 'ATIVA'),
    (14, 'Cetirizina', 20260920, 18, 'SUSPENSA'),
    (15, 'Atorvastatina', 20260920, 18, 'ATIVA');