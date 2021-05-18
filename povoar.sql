-- Morada: Centros
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (1, 2373803, 21);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (2, 3358752, 36);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (3, 8348298, 109);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (4, 5029243, 21);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (5, 4698182, 367);

-- Moarada: Utente / Enfermeiro
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (6, 4200465, 1);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (7, 7786145, 80);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (8, 3799872, 95);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (9, 4667163, 12);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (10, 2763868, 24);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (11, 2738957, 52);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (12, 2931273, 12);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (13, 3873927, 104);
INSERT INTO Morada (id, codigoPostal, numeroPorta) VALUES (14, 3873389, 276);
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (15, 8186322, 501, '3º Esq');
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (16, 8721979, 307, '2º Dir Tras');
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (17, 5273688, 239, 'R/C Esq');
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (18, 5312888, 403, '6º Esq Frente');
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (19, 4183819, 63, '4º Dir');
INSERT INTO Morada (id, codigoPostal, numeroPorta, infoExtra) VALUES (20, 4978345, 712, '1º Esq Tras');

-- Centro
INSERT INTO Centro (id, telefone, email, moradaID) VALUES (1, 910112456, 'centrosaude@gmail.com', 1);
INSERT INTO Centro (id, telefone, email, moradaID) VALUES (2, 223123654, 'centro-saude@gmail.com', 2);
INSERT INTO Centro (id, telefone, email, moradaID) VALUES (3, 910112456, 'centro.saude@gmail.com', 3);
INSERT INTO Centro (id, telefone, email, moradaID) VALUES (4, 808452685, 'centrosdeaude@gmail.com', 4);
INSERT INTO Centro (id, telefone, email, moradaID) VALUES (5, 221598745, 'centro-de-saude@gmail.com', 5);

-- Utente
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (1, '2020-06-22 12:00:00', 'Francisco Gonçalves Cerqueira', 'fgc@fe.up.pt', 996845721, 'Masculino', '2001-06-22', 2, 6, 2);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (2, '2020-06-22 13:00:00', 'Adriano Filipe Ribeiro Soares', 'afrs@fe.up.pt', 946281358, 'Masculino', '2001-08-29', 3, 6, 2);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (3, '2020-06-22 14:00:00', 'Guilherme Calassi', 'afrs@fe.up.pt', 918927398, 'Masculino', '2000-01-01', 1, 7, 2);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (4, '2021-04-01 01:00:00', 'Maria Albertina Miquelina Rossetti', 'mamama@gmail.com', 919191919, 'Feminino', '1932-08-21', 1, 7, 3);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (5, '2021-04-01 02:00:00', 'Moisés Torrado Casado', 'moisescasado@gmail.com', 928129391, 'Masculino', '1996-02-19', 2, 8, 2);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (6, '2021-04-01 03:00:00', 'Teófilo Sintra Proença', 'teofilo@gmail.com', 929377911, 'Masculino', '1979-07-10', 1, 8, 5);
INSERT INTO Utente (id, dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (7, '2021-04-01 04:00:00', 'Liara Cabeça Frajuca', 'liara@gmail.com', 947238924, 'Feminino', '1985-07-25', 3, 9, 1);
INSERT INTO Utente (id, dataRegisto, nome, email, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (8, '2021-04-01 05:00:00', 'Nalini Graça Pedro', 'nalini@gmail.com', 'Masculino', '1950-10-07', 1, 9, 4);
INSERT INTO Utente (id, dataRegisto, nome, email, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (9, '2021-04-01 06:00:00', 'Ahmad Ataíde Madureira', 'ahmad@gmail.com', 'Masculino', '1987-05-15', 3, 10, 3);
INSERT INTO Utente (id, dataRegisto, nome, email, genero, dataNascimento, prioridade, moradaId, centroID) VALUES (10, '2021-04-01 07:00:00', 'Anny Laranjeira Rebocho', 'anny@gmail.com', 'Feminino', '1990-08-06', 1, 10, 1);

-- Enfermeiro
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (1, '2021-01-01 00:00:00', 'Cármen Caparica Trigueiro', 'carmen@gmail.com', 924892374, 'Feminino', '1999-04-09', 11, 1);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (2, '2021-01-01 00:00:00', 'Yu Bento Milheiriço', 'yubento@gmail.com', 929081312, 'Masculino', '1979-10-04', 12, 1);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (3, '2021-01-01 00:00:00', 'Dália Vilanova Cisneiros', 'dvc@gmail.com', 919891271, 'Feminino', '1960-05-08', 13, 2);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (4, '2021-01-01 00:00:00', 'Leonardo Dinis Barreira', 'leonardo@gmail.com', 929081312, 'Masculino', '1984-09-06', 14, 2);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (5, '2021-01-01 00:00:00', 'Ravidson Azambuja Macedo', 'ravidson@gmail.com', 982763213, 'Masculino', '1986-11-23', 15, 3);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (6, '2021-01-01 00:00:00', 'Lya Franqueira Regueira', 'lya@gmail.com', 912897921, 'Feminino', '1972-05-19', 16, 3);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (7, '2021-01-01 00:00:00', 'Catarina Belmonte Matosinhos', 'catarina@gmail.com', 971763871, 'Feminino', '1987-16-11', 17, 4);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (8, '2021-01-01 00:00:00', 'Valentim Galvão Morão', 'valentim@gmail.com', 928379121, 'Masculino', '1981-05-13', 18, 4);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (9, '2021-01-01 00:00:00', 'Antonia Porto Mendes', 'antonia@gmail.com', 928937211, 'Feminino', '1975-12-23', 19, 5);
INSERT INTO Enfermeiro (id, dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES (10, '2021-01-01 00:00:00', 'Mouhamed Carrilho Cavaco', 'mouhamed@gmail.com', 938932443, 'Masculino', '1989-09-21', 20, 5);

-- Turno
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (1, 2, 0, 720);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (2, 2, 720, 1110);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (3, 3, 0, 600);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (4, 3, 700, 1030);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (5, 4, 480, 810);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (6, 4, 840, 1380);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (7, 5, 360, 720);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (8, 5, 780, 1020);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (9, 5, 1020, 1439);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (10, 6, 360, 800);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (11, 6, 830, 1200);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (12, 7, 420, 600);
INSERT INTO Turno (id, diaDaSemana, inicio, termino) VALUES (13, 7, 600, 780);

-- Horario
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (1, 1);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (1, 4);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (1, 6);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (2, 1);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (2, 2);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (2, 3);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (2, 4);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (3, 5);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (3, 6);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (3, 7);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (3, 8);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (4, 9);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (4, 10);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (4, 11);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (4, 12);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (5, 5);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (5, 7);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (5, 13);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (6, 6);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (6, 8);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (6, 10);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (7, 5);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (7, 7);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (7, 9);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (7, 11);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (8, 4);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (9, 2);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (9, 6);
INSERT INTO Horario (enfermeiroID, turnoID) VALUES (9, 13);

-- Virus
INSERT INTO Virus (id, nomeCientifico) VALUES (1, 'SARS-CoV-2');
INSERT INTO Virus (id, nomeCientifico) VALUES (2, 'Ebola');
INSERT INTO Virus (id, nomeCientifico) VALUES (3, 'Variola');
INSERT INTO Virus (id, nomeCientifico) VALUES (4, 'H1N1');
INSERT INTO Virus (id, nomeCientifico) VALUES (5, 'Dengue');

-- Laboratorio
INSERT INTO Laboratorio (id, nome) VALUES (1, 'Moderna');
INSERT INTO Laboratorio (id, nome) VALUES (2, 'Pfizer');
INSERT INTO Laboratorio (id, nome) VALUES (3, 'BioNTech');
INSERT INTO Laboratorio (id, nome) VALUES (4, 'AstraZeneca');
INSERT INTO Laboratorio (id, nome) VALUES (5, 'FEUP BioTech');
INSERT INTO Laboratorio (id, nome) VALUES (6, 'APRLabs');

-- Vacina
INSERT INTO Vacina (id, nome, tempoConservacao, numeroDosagens, virusID) VALUES (1, 'Moderna COVID‑19 Vaccine', 72, 2, 1);
INSERT INTO Vacina (id, nome, tempoConservacao, numeroDosagens, virusID) VALUES (2, 'Comirnaty', 36, 2, 1);
INSERT INTO Vacina (id, nome, tempoConservacao, numeroDosagens, virusID) VALUES (3, 'Oxford–AstraZeneca COVID-19', 48, 2, 1);
INSERT INTO Vacina (id, nome, tempoConservacao, numeroDosagens, virusID) VALUES (4, 'APR Dengue Vaccine', 1024, 4, 5);
INSERT INTO Vacina (id, nome, tempoConservacao, numeroDosagens, virusID) VALUES (5, 'APR FEUP EVax', 0, 1, 2);

-- Fabricante
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (1, 1);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (2, 2);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (2, 3);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (3, 4);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (4, 6);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (5, 5);
INSERT INTO Fabricante (vacinaID, laboratorioID) VALUES (5, 6);


-- Contacto
INSERT INTO Contacto (dataContacto, dataComparecimento, utenteID, vacinaID) VALUES ('2021-04-03 12:00:00', '2021-09-18 08:00:00', 1, 1);
INSERT INTO Contacto (dataContacto, dataComparecimento, utenteID, vacinaID) VALUES ('2021-04-02 09:00:00', '2021-07-29 09:00:00', 1, 2);
INSERT INTO Contacto (dataContacto, dataComparecimento, utenteID, vacinaID) VALUES ('2021-03-31 10:30:00', '2021-07-20 10:30:00', 3, 2);
INSERT INTO Contacto (dataContacto, dataComparecimento, utenteID, vacinaID) VALUES ('2021-03-30 15:00:00', '2021-07-11 16:30:00', 8, 2);
INSERT INTO Contacto (dataContacto, dataComparecimento, utenteID, vacinaID) VALUES ('2021-02-27 17:30:00', '2021-07-08 18:45:00', 10, 3);

-- Stock
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (1, 1, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (1, 2, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (1, 3, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (1, 4, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (1, 5, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (2, 1, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (2, 2, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (2, 3, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (2, 4, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (2, 5, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (3, 1, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (3, 2, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (3, 3, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (3, 4, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (3, 5, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (4, 1, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (4, 2, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (4, 3, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (4, 4, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (4, 5, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (5, 1, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (5, 2, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (5, 3, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (5, 4, 10);
INSERT INTO Stock (vacinaID, centroID, quantidade) VALUES (5, 5, 10);


-- Encomenda
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista, dataEncomenda) VALUES (1, 1, 1, 20.03, 4, '2021-09-20 10:00:00', '2020-03-10 17:00:00');
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista) VALUES (2, 1, 2, 20.88, 3, '2021-10-30 16:00:00');
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista) VALUES (3, 2, 2, 10.99, 3, '2021-11-01 19:00:00');
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista, dataEncomenda) VALUES (4, 2, 3, 10.01, 1, '2021-08-12 09:30:00', '2021-01-01 15:30:00');
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista) VALUES (5, 4, 4, 8.1, 1, '2021-09-22 11:00:00');

-- Estado
INSERT INTO Estado (encomendaID, dataAtualizacao, estado) VALUES (1, '2020-08-08 09:00:00', 'aguarda pagamento');
INSERT INTO Estado (encomendaID, dataAtualizacao, estado) VALUES (4, '2021-02-01 20:30:00', 'aprovado');
INSERT INTO Estado (encomendaID, dataAtualizacao, estado) VALUES (5, '2020-09-21 12:45:00', 'cancelado');
