CREATE TABLE Utentes (
	id_utente ??? PRIMARY KEY,
	nome_utente VARCHAR(500) NOT NULL,
	data_nasc_ut DATE NOT NULL,
	email_ut VARCHAR(500)
);

CREATE TABLE Medicos (
	id_medico ??? PRIMARY KEY,
	nome_medico VARCHAR(500) NOT NULL,
	data_nasc_med DATE NOT NULL,
	email_med VARCHAR(500)
);

CREATE TABLE Consultas (
	id_consulta ??? PRIMARY KEY,
	id_utente ???,
	id_medico ???,
	data_consulta DATE,
	estado_consulta VARCHAR(500),
	FOREIGN KEY (id_utente) REFERENCES Utentes(id_utente),
	FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

CREATE TABLE Prescricoes (
    id_presc ??? PRIMARY KEY,
    nome_presc VARCHAR(500),
    data_presc DATE,
    id_consulta ???,
    presc_estado VARCHAR(500),
    FOREIGN KEY (id_consulta) REFERENCES Consultas(id_consulta)
);