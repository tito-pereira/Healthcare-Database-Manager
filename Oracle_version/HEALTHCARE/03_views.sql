DROP INDEX idx_estado_consulta;
CREATE INDEX idx_estado_consulta
on Consultas(estado_consulta);

DROP VIEW "Consultas Agendadas";
CREATE VIEW "Consultas Agendadas" as
SELECT *
FROM Consultas C
WHERE C.estado_consulta = "AGENDADA";

---------------
---------------

DROP INDEX "idx_id_medico_C";
CREATE INDEX idx_id_medico_C
on Consultas(id_medico);
DROP INDEX "idx_id_medico_M";
CREATE INDEX idx_id_medico_M
on Medicos (id_medico);

DROP VIEW "Todas as Consultas Por Medico";
CREATE VIEW "Todas as Consultas Por Medico" as
SELECT M.nome_medico, C.id_consulta, C.estado_consulta
FROM Consultas C JOIN Medicos M
WHERE C.id_medico = M.id_medico
ORDER by M.nome_medico;

---------------
---------------

DROP INDEX "idx_presc_estado";
CREATE INDEX idx_presc_estado
on Prescricoes(presc_estado);

DROP VIEW "Prescricoes Ativas";
CREATE VIEW "Prescricoes Ativas" as
SELECT *
FROM Prescricoes P
WHERE P.presc_estado = "Ativa";

---------------
---------------

DROP INDEX "idx_nome_utente";
CREATE INDEX idx_nome_utente
on Utentes(nome_utente);

DROP VIEW "Prescricoes Por Utente";
CREATE VIEW "Prescricoes Por Utente" as
SELECT U.nome_utente, P.nome_presc, P.presc_estado, P.data_presc
FROM Prescricoes P JOIN Consultas C on P.id_consulta = C.id_consulta JOIN Utentes U on C.id_utente = U.id_utente
ORDER by U.nome_utente;