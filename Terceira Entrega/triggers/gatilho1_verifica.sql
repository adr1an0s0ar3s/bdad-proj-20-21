.mode columns
.headers ON
.nullvalue NULL

-- Inserção de um novo enfermeiro
INSERT INTO Enfermeiro (dataRegisto, nome, email, telefone, genero, dataNascimento, moradaID, centroID) VALUES ('2021-05-21 15:00:00', 'Carla Teixeira Lopes', 'carla@bdad.pt', 987654321, 'Feminino', '1985-04-03', 6, 3);
SELECT * FROM Enfermeiro;

-- Inserção de um novo utente com apenas o mesmo nome que o enfermeiro, não devendo surgir um erro
INSERT INTO Utente (dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES ('2021-05-21 16:00:00', 'Carla Teixeira Lopes', 'notcarla@bdad.pt', 919191919, 'Feminino', '1987-06-05', 2, 6, 3);
SELECT * FROM Utente;

-- Inserção de um novo utente com os mesmos dados (que são usados para considerar uma pessoa duplicada) do enfermeiro, devendo surgir um erro
INSERT INTO Utente (dataRegisto, nome, email, telefone, genero, dataNascimento, prioridade, moradaId, centroID) VALUES ('2021-05-21 16:30:00', 'Carla Teixeira Lopes', 'carla@bdad.pt', 987654321, 'Feminino', '1985-04-03', 2, 6, 3);
