PRAGMA foreign_keys = on;
.mode columns
.headers on

DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Encomenda;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS Contacto;
DROP TABLE IF EXISTS Fabricante;
DROP TABLE IF EXISTS Vacina;
DROP TABLE IF EXISTS Laboratorio;
DROP TABLE IF EXISTS Virus;
DROP TABLE IF EXISTS Horario;
DROP TABLE IF EXISTS Turno;
DROP TABLE IF EXISTS Enfermeiro;
DROP TABLE IF EXISTS Utente;
DROP TABLE IF EXISTS Centro;
DROP TABLE IF EXISTS Morada;


CREATE TABLE Morada (
    id              INTEGER CONSTRAINT Morada_id PRIMARY KEY CHECK (id > 0),
    codigoPostal    INTEGER CONSTRAINT Morada_codigoPostal CHECK (1e6 <= codigoPostal AND codigoPostal < 1e7) NOT NULL,
    numeroPorta     INTEGER CONSTRAINT Morada_numeroPorta CHECK (numeroPorta > 0) NOT NULL,
    infoExtra       TEXT DEFAULT NULL
);

CREATE TABLE Centro (
    id          INTEGER CONSTRAINT Centro_id PRIMARY KEY CHECK (id > 0),
    telefone    INTEGER CONSTRAINT Centro_telefone CHECK (1e8 <= telefone AND telefone < 1e9) NOT NULL,
    email       TEXT CONSTRAINT Centro_email NOT NULL,
    moradaID    INTEGER CONSTRAINT Centro_moradaID REFERENCES Morada ON DELETE RESTRICT ON UPDATE CASCADE UNIQUE NOT NULL
);

CREATE TABLE Utente (
    id              INTEGER CONSTRAINT Utente_id PRIMARY KEY CHECK (id > 0),
    dataRegisto     INTEGER CONSTRAINT Utente_dataRegisto CHECK (dataRegisto <= CURRENT_TIMESTAMP) NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    nome            TEXT CONSTRAINT Utente_nome NOT NULL,
    email           TEXT CONSTRAINT Utente_email NOT NULL,
    telefone        INTEGER CONSTRAINT Utente_telefone CHECK (1e8 <= telefone AND telefone < 1e9) DEFAULT NULL,
    genero          TEXT CONSTRAINT Utente_genero NOT NULL,
    dataNascimento  DATE CONSTRAINT Utente_dataNascimento CHECK (dataNascimento < CURRENT_TIMESTAMP) NOT NULL,
    prioridade      INTEGER CONSTRAINT Utente_prioridade CHECK (0 < prioridade AND prioridade < 4) NOT NULL,
    moradaID        INTEGER CONSTRAINT Utente_moradaID REFERENCES Morada ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    centroID        INTEGER CONSTRAINT Utente_centroID REFERENCES Centro ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL
);

CREATE TABLE Enfermeiro (
    id              INTEGER CONSTRAINT Enfermeiro_id PRIMARY KEY CHECK (id > 0),
    dataRegisto     DATE CONSTRAINT Enfermeiro_dataRegisto CHECK (dataRegisto <= CURRENT_TIMESTAMP) NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    nome            TEXT CONSTRAINT Enfermeiro_nome NOT NULL,
    email           TEXT CONSTRAINT Enfermeiro_email NOT NULL,
    telefone        INTEGER CONSTRAINT Enfermeiro_telefone CHECK (1e8 <= telefone AND telefone < 1e9) DEFAULT NULL,
    genero          TEXT CONSTRAINT Enfermeiro_genero NOT NULL,
    dataNascimento  DATE CONSTRAINT Enfermeiro_dataNascimento CHECK (dataNascimento < CURRENT_TIMESTAMP) NOT NULL,
    moradaID        INTEGER CONSTRAINT Enfermeiro_moradaID REFERENCES Morada ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    centroID        INTEGER CONSTRAINT Enfermeiro_centroID REFERENCES Centro ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL
);

CREATE TABLE Turno (
    id              INTEGER CONSTRAINT Turno_id PRIMARY KEY CHECK (id > 0),
    diaDaSemana     INTEGER CONSTRAINT Turno_diaDaSemana CHECK (0 < diaDaSemana AND diaDaSemana <= 7) NOT NULL,
    inicio          INTEGER CONSTRAINT Turno_inicio CHECK (inicio >= 0) NOT NULL,  -- Minutos
    termino         INTEGER CONSTRAINT Turno_termino CHECK (termino < 24*60) NOT NULL,
    CONSTRAINT Turno_inicio_less_termino CHECK (inicio < termino),
    CONSTRAINT Turno_inicio_termino_unique UNIQUE (diaDaSemana, inicio, termino)
);

CREATE TABLE Horario (
    enfermeiroID    INTEGER CONSTRAINT Horario_enfermeiroID REFERENCES Enfermeiro ON DELETE RESTRICT ON UPDATE CASCADE,
    turnoID         INTEGER CONSTRAINT Horario_turnoID REFERENCES Turno ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT Horario_enfermeiroID_turnoID_PK PRIMARY KEY (enfermeiroID, turnoID)
);

CREATE TABLE Contacto (
    id                  INTEGER CONSTRAINT Contacto_id PRIMARY KEY CHECK (id > 0),
    dataContacto        DATE CONSTRAINT Contacto_dataContacto CHECK (dataContacto <= CURRENT_TIMESTAMP) NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    dataComparecimento  TEXT CONSTRAINT Contacto_dataComparecimento NOT NULL,
    utenteID            INTEGER CONSTRAINT Contacto_utenteID REFERENCES Utente ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    vacinaID            INTEGER CONSTRAINT Contacto_vacinaID REFERENCES Vacina ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    CONSTRAINT Contacto_dataContacto_less_dataComparecimento CHECK (dataContacto < dataComparecimento)
);

CREATE TABLE Virus (
    id              INTEGER CONSTRAINT Virus_id PRIMARY KEY CHECK (id > 0),
    nomeCientifico  TEXT CONSTRAINT Virus_nomeCientifico NOT NULL UNIQUE
);

CREATE TABLE Laboratorio (
    id      INTEGER CONSTRAINT Laboratorio_id PRIMARY KEY CHECK (id > 0),
    nome    TEXT CONSTRAINT Laboratorio_nome NOT NULL UNIQUE
);

CREATE TABLE Vacina (
    id                  INTEGER CONSTRAINT Vacina_id PRIMARY KEY CHECK (id > 0),
    nome                TEXT CONSTRAINT Vacina_nome NOT NULL,
    tempoConservacao    TEXT CONSTRAINT Vacina_tempoConservacao CHECK(tempoConservacao >= 0) NOT NULL,  -- Horas
    numeroDosagens      INTEGER CONSTRAINT Vacina_dosagens CHECK (numeroDosagens > 0) NOT NULL,
    virusID             INTEGER CONSTRAINT Vacina_virusID REFERENCES Virus ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);

CREATE TABLE Fabricante (
    vacinaID        INTEGER CONSTRAINT Fabricante_vacinaID REFERENCES Vacina ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    laboratorioID   INTEGER CONSTRAINT Fabricante_laboratorioID REFERENCES Laboratorio ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    CONSTRAINT Fabricante_vacinaID_laboratorioID PRIMARY KEY (vacinaID, laboratorioID)
);

CREATE TABLE Stock (
    vacinaID    INTEGER CONSTRAINT Stock_vacinaID REFERENCES Vacina ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    centroID    INTEGER CONSTRAINT Stock_centroID REFERENCES Centro ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    quantidade  INTEGER CONSTRAINT Stock_quantidade CHECK (quantidade >= 0) NOT NULL,
    CONSTRAINT Stock_vacinaID_centroID PRIMARY KEY (vacinaID, centroID)
);

CREATE TABLE Encomenda (
    id                  INTEGER CONSTRAINT Encomenda_id PRIMARY KEY CHECK (id > 0),
    vacinaID            INTEGER CONSTRAINT Encomenda_vacinaID REFERENCES Vacina ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    centroID            INTEGER CONSTRAINT Encomenda_centroID REFERENCES Centro ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    custo               REAL CONSTRAINT Encomenda_custo CHECK (custo >= 0) NOT NULL,
    quantidade          INTEGER CONSTRAINT Encomenda_quantidade CHECK (quantidade > 0) NOT NULL,
    dataEntregaPrevista DATE CONSTRAINT Encomenda_dataEntregaPrevista CHECK(dataEncomenda < dataEntregaPrevista) NOT NULL,
    dataEncomenda       DATE CONSTRAINT Encomenda_dataEncomenda NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE Estado (
    id              INTEGER CONSTRAINT Estado_id PRIMARY KEY CHECK (id > 0),
    encomendaID     INTEGER CONSTRAINT Estado_encomendaID REFERENCES Encomenda ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    dataAtualizacao DATE CONSTRAINT Estado_dataAtualização CHECK(dataAtualizacao <= CURRENT_TIMESTAMP) NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    estado          TEXT CONSTRAINT Estado_estado CHECK(estado IN ('aguarda pagamento','aprovado','preparando encomenda', 'em transporte', 'entregue', 'cancelado')) NOT NULL DEFAULT 'aguarda pagamento'
);