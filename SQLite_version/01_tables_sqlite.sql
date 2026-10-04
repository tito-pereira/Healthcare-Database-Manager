CREATE TABLE Patients (
    id_patient INTEGER PRIMARY KEY AUTOINCREMENT,
    name_patient TEXT NOT NULL,
    date_birth_pat INTEGER NOT NULL,
    email_patient TEXT
);

CREATE TABLE Specialty (
    id_specialty INTEGER PRIMARY KEY AUTOINCREMENT,
    name_specialty TEXT NOT NULL UNIQUE
);

CREATE TABLE Doctors (
    id_doctor INTEGER PRIMARY KEY AUTOINCREMENT,
    name_doctor TEXT NOT NULL,
    date_birth_doc INTEGER NOT NULL,
    email_doc TEXT
);

CREATE TABLE Doctor_Specialty (
    id_doctor INTEGER NOT NULL,
    id_specialty INTEGER NOT NULL,
    PRIMARY KEY (id_doctor, id_specialty),
    FOREIGN KEY (id_doctor) REFERENCES Doctors(id_doctor),
    FOREIGN KEY (id_specialty) REFERENCES Specialty(id_specialty)
);

CREATE TABLE Appointments (
    id_appointment INTEGER PRIMARY KEY AUTOINCREMENT,
    id_patient INTEGER NOT NULL,
    id_doctor INTEGER NOT NULL,
    date_appointment TEXT NOT NULL,
    state_appointment TEXT NOT NULL,
    payment REAL,
    FOREIGN KEY (id_patient) REFERENCES Patients(id_patient),
    FOREIGN KEY (id_doctor) REFERENCES Doctors(id_doctor)
);

CREATE TABLE Medication (
    id_medication INTEGER PRIMARY KEY AUTOINCREMENT,
    name_medication TEXT NOT NULL UNIQUE
);

CREATE TABLE Prescriptions (
    id_prescription INTEGER PRIMARY KEY AUTOINCREMENT,
    id_appointment INTEGER NOT NULL,
    id_medication INTEGER NOT NULL,
    date_presc INTEGER NOT NULL,
    state_presc TEXT NOT NULL,
    FOREIGN KEY (id_appointment) REFERENCES Appointments(id_appointment),
    FOREIGN KEY (id_medication) REFERENCES Medication(id_medication)
);

CREATE TABLE Prescription_History (
    id_presc_history INTEGER PRIMARY KEY AUTOINCREMENT,
    id_prescription INTEGER NOT NULL,
    old_state_presc TEXT NOT NULL,
    new_state_presc TEXT NOT NULL,
    FOREIGN KEY (id_prescription) REFERENCES Prescriptions(id_prescription)
);

CREATE TABLE Appointment_History (
    id_appoint_history INTEGER PRIMARY KEY AUTOINCREMENT,
    id_appointment INTEGER NOT NULL,
    old_state_appoint TEXT NOT NULL,
    new_state_appoint TEXT NOT NULL,
    FOREIGN KEY (id_appointment) REFERENCES Appointments(id_appointment)
);