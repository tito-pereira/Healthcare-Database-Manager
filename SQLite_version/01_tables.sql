CREATE TABLE Utentes (
	id_utente INTEGER PRIMARY KEY,
	nome_utente TEXT NOT NULL,
	data_nasc_ut INTEGER NOT NULL,
	email_ut TEXT
);

CREATE TABLE Medicos (
	id_medico INTEGER PRIMARY KEY,
	nome_medico TEXT NOT NULL,
	data_nasc_med INTEGER NOT NULL,
	email_med TEXT
);

CREATE TABLE Consultas (
	id_consulta INTEGER PRIMARY KEY,
	id_utente INTEGER,
	id_medico INTEGER,
	data_consulta INTEGER,
	estado_consulta TEXT,
	FOREIGN KEY (id_utente) REFERENCES Utentes(id_utente),
	FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

CREATE TABLE Prescricoes (
    id_presc INTEGER PRIMARY KEY,
    nome_presc TEXT,
    data_presc INTEGER,
    id_consulta INTEGER,
    presc_estado TEXT,
    FOREIGN KEY (id_consulta) REFERENCES Consultas(id_consulta)
);