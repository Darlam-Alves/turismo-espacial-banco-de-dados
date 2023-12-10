INSERT INTO turistaEspacial (passaporte, nome, celular, telFixo, cep, numEndereço, pais, dataNascimento) VALUES
('XP12345678', 'Luna Moraes', '11987654321', '21234567', '12345-678', 101, 'Brasil', '1985-07-16'),
('BR98765432', 'Marco Silva', '21987654321', '11234567', '23456-789', 202, 'Brasil', '1990-03-25'),
('US13579246', 'Emily Johnson', '31987654321', NULL, '34567-890', 303, 'Estados Unidos', '1975-12-01'),
('CA24681012', 'Liam Tremblay', '41987654321', '22345678', '45678-901', 404, 'Canadá', '1988-06-09'),
('FR13579135', 'Chloé Bernard', NULL, '33456789', '56789-012', 105, 'França', '1995-09-30'),
('DE24680246', 'Max Müller', '51987654321', '44567890', '67890-123', 206, 'Alemanha', '1980-11-11'),
('JP35791357', 'Hiro Tanaka', '61987654321', '55678901', '78901-234', 307, 'Japão', '1993-02-20'),
('IN46802468', 'Priya Singh', '71987654321', NULL, '89012-345', 408, 'Índia', '1977-04-15'),
('RU57913579', 'Alexei Ivanov', NULL, '66789012', '90123-456', 109, 'Rússia', '1998-08-05'),
('CN68024680', 'Ming Zhao', '81987654321', '77890123', '01234-567', 210, 'China', '1983-01-27'),
('IT79135791', 'Giulia Rossi', '91987654321', '88901234', '12345-678', 311, 'Itália', '1972-05-14'),
('ES80246802', 'Carlos García', NULL, '99890123', '23456-789', 412, 'Espanha', '1996-07-22'),
('NG91357913', 'Amina Okeke', '21987654321', '11234567', '34567-890', 113, 'Nigéria', '1984-09-09'),
('ZA02468024', 'Ethan Smith', '27987654321', NULL, '45678-901', 214, 'África do Sul', '1991-10-18'),
('AU13579135', 'Olivia Brown', '91987654321', '33456789', '56789-012', 315, 'Austrália', '1989-03-03');

INSERT INTO pagamento (numTransacao, dataPagamento, metodo, valor, estado) VALUES
('TRX00001', '2023-01-05', 'Crédito', 500, 'Pago'),
('TRX00002', '2023-01-12', 'Débito', 200, 'Não Pago'),
('TRX00003', '2023-01-20', 'PIX', 150, 'Pago'),
('TRX00004', '2023-01-25', 'Crédito', 250, 'Pago'),
('TRX00005', '2023-02-01', 'Débito', 300, 'Não Pago'),
('TRX00006', '2023-02-10', 'PIX', 400, 'Pago'),
('TRX00007', '2023-02-18', 'Crédito', 350, 'Pago'),
('TRX00008', '2023-02-26', 'Débito', 100, 'Não Pago'),
('TRX00009', '2023-03-05', 'PIX', 200, 'Pago'),
('TRX00010', '2023-03-12', 'Crédito', 450, 'Pago'),
('TRX00011', '2023-03-20', 'Débito', 500, 'Não Pago'),
('TRX00012', '2023-03-28', 'PIX', 250, 'Pago'),
('TRX00013', '2023-04-04', 'Crédito', 300, 'Pago'),
('TRX00014', '2023-04-12', 'Débito', 150, 'Não Pago'),
('TRX00015', '2023-04-20', 'PIX', 350, 'Pago'),
('TRX00016', '2024-03-25', 'CRÉDITO', 2000, 'Pago'),
('TRX00017', '2024-04-26', 'DÉBITO', 1800, 'Pago'),
('TRX00018', '2024-06-01', 'PIX', 2500, 'Não Pago'),
('TRX00019', '2024-03-01', 'CRÉDITO', 2200, 'Pago'),
('TRX00020', '2024-05-30', 'DÉBITO', 1900, 'Não Pago'),
('TRX00021', '2024-07-30', 'PIX', 2600, 'Pago'),
('TRX00022', '2024-03-02', 'CRÉDITO', 2300, 'Não Pago'),
('TRX00023', '2025-01-28', 'DÉBITO', 2000, 'Pago'),
('TRX00024', '2025-04-16', 'PIX', 2700, 'Não Pago'),
('TRX00025', '2023-04-20', 'Débito', 355, 'Pago'),
('TRX00026', '2023-04-20', 'Crédito', 435, 'Pago');

INSERT INTO Pacote (nome, nomeHospedagem, horaCheckIn, horaCheckOut, endereco) VALUES
('Marte Escape', 'HospedagemMarte1', '12:00:00', '12:00:00', 'Valles Marineris, Marte'),
('Vênus Vista', 'HospedagemVenus1', '08:30:00', '15:45:00', 'Maxwell Montes, Vênus'),
('Lunar Landing', 'HospedagemLua1', '18:20:00', '09:10:00', 'Mare Tranquillitatis, Lua'),
('Io Adventure', 'HospedagemIo1', '14:30:00', '11:05:00', 'Loki Patera, Io'),
('Titan Trek', 'HospedagemTitan1', '17:35:00', '08:45:00', 'Kraken Mare, Titã'),
('Europa Excursion', 'HospedagemEuropa1', '14:00:00', '19:25:00', 'Conamara Chaos, Europa'),
('Ganymede Getaway', 'HospedagemGanymede1', '10:55:00', '15:15:00', 'Galileo Regio, Ganímedes'),
('Callisto Cabin', 'HospedagemCallisto1', '17:50:00', '14:05:00', 'Valhalla Crater, Calisto'),
('Mercury Mission', 'HospedagemMercury1', '09:20:00', '16:30:00', 'Caloris Basin, Mercúrio'),
('Pluto Pilgrimage', 'HospedagemPluto1', '13:40:00', '18:55:00', 'Tombaugh Regio, Plutão'),
('Sunrise on Saturn', 'HospedagemSaturn1', '09:50:00', '14:10:00', 'Hexágono do Pólo sul, Saturno'),
('Neptune Nirvana', 'HospedagemNeptune1', '14:25:00', '09:40:00', 'Great Dark Spot, Netuno'),
('Enceladus Expedition', 'HospedagemEnceladus1', '16:40:00', '12:55:00', 'Tiger Stripes, Encélado'),
('Olympus Outing', 'HospedagemMarte2', '11:25:00', '15:50:00', 'Olympus Mons, Marte'),
('Phobos Fantasy', 'HospedagemPhobos1', '10:15:00', '14:45:00', 'Stickney Crater, Fobos');



INSERT INTO viagem (dataPartida, pacote, turista, pagamento, dataRetorno, duracao) VALUES
('2024-03-15', 'Marte Escape', 'XP12345678', 'TRX00001', '2024-03-22', '8 days'),
('2024-03-25', 'Vênus Vista', 'XP12345678', 'TRX00022', '2024-04-22', '28 days'),
('2024-05-01', 'Lunar Landing', 'XP12345678', 'TRX00025', '2024-05-10', '9 days'),
('2024-04-05', 'Vênus Vista', 'BR98765432', 'TRX00002', '2024-04-12', '9 days'),
('2024-05-01', 'Lunar Landing', 'US13579246', 'TRX00003', '2024-05-08', '10 days'),
('2024-06-10', 'Io Adventure', 'CA24681012', 'TRX00004', '2024-06-17', '11 days'),
('2024-07-20', 'Titan Trek', 'FR13579135', 'TRX00005', '2024-07-27', '12 days'),
('2024-08-15', 'Europa Excursion', 'DE24680246', 'TRX00006', '2024-08-22', '13 days'),
('2024-09-01', 'Ganymede Getaway', 'JP35791357', 'TRX00007', '2024-09-08', '14 days'),
('2024-10-10', 'Callisto Cabin', 'IN46802468', 'TRX00008', '2024-10-17', '15 days'),
('2024-11-05', 'Mercury Mission', 'RU57913579', 'TRX00009', '2024-11-12', '16 days'),
('2024-12-15', 'Pluto Pilgrimage', 'CN68024680', 'TRX00010', '2024-12-22', '17 days'),
('2025-01-20', 'Sunrise on Saturn', 'IT79135791', 'TRX00011', '2025-01-27', '18 days'),
('2025-02-15', 'Neptune Nirvana', 'ES80246802', 'TRX00012', '2025-02-22', '19 days'),
('2025-03-10', 'Enceladus Expedition', 'NG91357913', 'TRX00013', '2025-03-17', '20 days'),
('2025-04-05', 'Olympus Outing', 'ZA02468024', 'TRX00014', '2025-04-12', '21 days'),
('2025-05-01', 'Phobos Fantasy', 'AU13579135', 'TRX00015', '2025-05-08', '22 days'),
('2024-04-05', 'Vênus Vista', 'XP12345678', 'TRX00016', '2024-04-12', '9 days'),
('2024-06-10', 'Io Adventure', 'XP12345678', 'TRX00018', '2024-06-17', '11 days'),
('2024-03-15', 'Marte Escape', 'BR98765432', 'TRX00019', '2024-03-22', '8 days'),
('2024-06-10', 'Io Adventure', 'BR98765432', 'TRX00020', '2024-06-17', '11 days'),
('2024-08-15', 'Europa Excursion', 'BR98765432', 'TRX00021', '2024-08-22', '13 days'),
('2024-03-15', 'Marte Escape', 'US13579246', 'TRX00017', '2024-03-22', '8 days'),
('2025-02-15', 'Neptune Nirvana', 'US13579246', 'TRX00023', '2025-02-22', '19 days'),
('2025-05-01', 'Phobos Fantasy', 'US13579246', 'TRX00024', '2025-05-08', '22 days');


INSERT INTO avaliacao (dataPartida, pacote, turista, nota, comentario, dataHora) VALUES
('2024-03-15', 'Marte Escape', 'XP12345678', 9.5, 'Ótima viagem!', '2024-03-23 10:30:00'),
('2024-04-05', 'Vênus Vista', 'BR98765432', 8.0, 'Lugar incrível!', '2024-04-13 15:20:00'),
('2024-05-01', 'Lunar Landing', 'US13579246', 7.5, 'Experiência única na lua!', '2024-05-09 09:45:00'),
('2024-06-10', 'Io Adventure', 'CA24681012', 10.0, 'Maravilhoso!', '2024-06-18 12:15:00'),
('2024-07-20', 'Titan Trek', 'FR13579135', 6.0, 'Paisagens interessantes.', '2024-07-28 08:00:00'),
('2024-08-15', 'Europa Excursion', 'DE24680246', 9.0, 'Adorei a viagem!', '2024-08-23 17:30:00'),
('2024-09-01', 'Ganymede Getaway', 'JP35791357', 8.5, 'Uma experiência única.', '2024-09-09 14:00:00'),
('2024-10-10', 'Callisto Cabin', 'IN46802468', 7.0, 'Boa viagem, mas algumas melhorias são necessárias.', '2024-10-18 10:45:00'),
('2024-11-05', 'Mercury Mission', 'RU57913579', 9.8, 'Incrível!', '2024-11-13 16:50:00'),
('2024-12-15', 'Pluto Pilgrimage', 'CN68024680', 8.7, 'Paisagens surpreendentes.', '2024-12-23 19:00:00'),
('2025-01-20', 'Sunrise on Saturn', 'IT79135791', 9.2, 'A viagem foi perfeita!', '2025-01-28 11:30:00'),
('2025-02-15', 'Neptune Nirvana', 'ES80246802', 7.8, 'Algumas dificuldades durante a viagem.', '2025-02-23 10:15:00'),
('2025-03-10', 'Enceladus Expedition', 'NG91357913', 8.9, 'Recomendo a todos!', '2025-03-18 13:30:00'),
('2025-04-05', 'Olympus Outing', 'ZA02468024', 6.5, 'Poderia ser melhor.', '2025-04-13 16:45:00'),
('2025-05-01', 'Phobos Fantasy', 'AU13579135', 9.5, 'Experiência incrível!', '2025-05-09 11:20:00');


INSERT INTO guiaEspacial (passaporte, nome, celular, telFixo, cep, numEndereco, pais, dataNascimento) VALUES
('GU12345678', 'Astronauta Silva', '11987654321', '11223344', '12345-678', 101, 'Brasil', '1980-05-12'),
('GU98765432', 'Cosmonauta Ivanov', '21987654321', '22334455', '23456-789', 202, 'Rússia', '1975-08-28'),
('GU13579246', 'Spaceman Johnson', '31987654321', NULL, '34567-890', 303, 'Estados Unidos', '1988-12-05'),
('GU24681012', 'Stellar Tremblay', '41987654321', '44556677', '45678-901', 404, 'Canadá', '1983-03-20'),
('GU13579135', 'Étoile Bernard', NULL, '33445566', '56789-012', 105, 'França', '1992-07-15'),
('GU24680246', 'Stern Müller', '51987654321', '88901234', '67890-123', 206, 'Alemanha', '1987-09-11'),
('GU35791357', 'Astro Tanaka', '61987654321', '55667788', '78901-234', 307, 'Japão', '1980-01-27'),
('GU46802468', 'Galactic Singh', '71987654321', NULL, '89012-345', 408, 'Índia', '1995-04-02'),
('GU57913579', 'Space Ivanov', NULL, '66789012', '90123-456', 109, 'Rússia', '1989-06-18'),
('GU68024680', 'Cosmic Zhao', '81987654321', '77890123', '01234-567', 210, 'China', '1974-10-01');

INSERT INTO especialidades (guiaEspacial, especialidade) VALUES
('GU12345678', 'Astronomia'),
('GU12345678', 'Geologia'),
('GU12345678', 'Biologia Espacial'),
('GU98765432', 'Engenharia de Foguetes'),
('GU98765432', 'Física Quântica'),
('GU13579246', 'Astrobiologia'),
('GU24681012', 'Exploração Lunar'),
('GU24681012', 'Topografia Espacial'),
('GU13579135', 'Arte Cósmica'),
('GU24680246', 'Astronomia'),
('GU35791357', 'Engenharia Aeroespacial'),
('GU35791357', 'Comunicação Intergaláctica'),
('GU46802468', 'Astrofotografia'),
('GU46802468', 'Botânica Extraterrestre'),
('GU57913579', 'Geopolítica Intergaláctica'),
('GU57913579', 'Engenharia de Foguetes'),
('GU68024680', 'Engenharia de Foguetes');

INSERT INTO guiaPacote (guia, pacote) VALUES
('GU12345678', 'Marte Escape'),
('GU12345678', 'Europa Excursion'),
('GU98765432', 'Vênus Vista'),
('GU98765432', 'Titan Trek'),
('GU13579246', 'Lunar Landing'),
('GU24681012', 'Io Adventure'),
('GU24681012', 'Callisto Cabin'),
('GU13579135', 'Titan Trek'),
('GU13579135', 'Phobos Fantasy'),
('GU24680246', 'Europa Excursion'),
('GU35791357', 'Ganymede Getaway'),
('GU46802468', 'Callisto Cabin'),
('GU46802468', 'Sunrise on Saturn'),
('GU57913579', 'Mercury Mission'),
('GU57913579', 'Olympus Outing'),
('GU68024680', 'Pluto Pilgrimage');

INSERT INTO linguasGuia (guia, lingua) VALUES
('GU12345678', 'Português'),
('GU12345678', 'Inglês'),
('GU98765432', 'Russo'),
('GU98765432', 'Inglês'),
('GU13579246', 'Inglês'),
('GU24681012', 'Francês'),
('GU24681012', 'Inglês'),
('GU13579135', 'Francês'),
('GU24680246', 'Alemão'),
('GU35791357', 'Japonês'),
('GU46802468', 'Hindi'),
('GU57913579', 'Inglês'),
('GU57913579', 'Russo'),
('GU68024680', 'Chinês');

INSERT INTO corpoCeleste (nome, tipo, gravidade, numColonias) VALUES
('Júpiter', 'SATÉLITE', 24.79, 3654),
('Terra', 'PLANETA', 9.8, 195),
('Lua', 'SATÉLITE', 1.625, 18),
('Marte', 'PLANETA', 3.72076, 95),
('Fobos', 'SATÉLITE', 0.0057, 72),
('Ganimedes', 'SATÉLITE', 1.428, 36),
('Europa', 'SATÉLITE', 1.314, 10),
('Titã', 'SATÉLITE', 1.352, 15),
('Vênus', 'PLANETA', 8.87, 20),
('Encélado', 'SATÉLITE', 0.113, 6),
('Ganímedes', 'SATÉLITE', 1.428, 10);

INSERT INTO colonia (nome, habitantes, localização, corpoCeleste) VALUES
('ColoniaTerra', 1000000, 'América do Norte', 'Terra'),
('ColoniaLua', 233, 'Cratera Lunar', 'Lua'),
('ColoniaMarte', 5000, 'Planalto de Tharsis', 'Marte'),
('ColoniaFobos', 365, 'Superfície de Fobos', 'Fobos'),
('ColoniaGanimedes', 2341, 'Subsuperfície de Ganimedes', 'Ganimedes'),
('ColoniaEuropa', 1245, 'Subsuperfície de Europa', 'Europa'),
('ColoniaTitan', 852, 'Planalto de Xanadu', 'Titã'),
('ColoniaVenus', 633, 'Planalto Aphrodite', 'Vênus'),
('ColoniaEncelado', 90, 'Subsuperfície de Encélado', 'Encélado'),
('ColoniaGanymede', 8000, 'Base Galileu', 'Ganímedes');

INSERT INTO voo (numero, pacote, colonia, origem, destino, horario, duracao, qtdPassageiro, cabineNum, cabineTipo) VALUES
(1, 'Marte Escape', 'ColoniaTerra', 'Terra', 'Marte', '12:00:00', '7 days', 100, 101, 'LUXO'),
(2, 'Vênus Vista', 'ColoniaVenus', 'Vênus', 'Marte', '08:30:00', '7 days', 150, 102, 'STANDARD'),
(3, 'Lunar Landing', 'ColoniaLua', 'Lua', 'Terra', '18:20:00', '7 days', 80, 103, 'DELUXE'),
(4, 'Io Adventure', 'ColoniaMarte', 'Marte', 'Io', '14:30:00', '7 days', 120, 104, 'LUXO'),
(5, 'Titan Trek', 'ColoniaTitan', 'Titã', 'Terra', '17:35:00', '7 days', 200, 105, 'STANDARD'),
(6, 'Europa Excursion', 'ColoniaEuropa', 'Europa', 'Terra', '14:00:00', '7 days', 90, 106, 'DELUXE'),
(7, 'Ganymede Getaway', 'ColoniaGanymede', 'Ganimedes', 'Terra', '10:55:00', '7 days', 130, 107, 'LUXO'),
(8, 'Mercury Mission', 'ColoniaMarte', 'Mercúrio', 'Terra', '09:20:00', '7 days', 70, 109, 'DELUXE'),
(9, 'Pluto Pilgrimage', 'ColoniaMarte', 'Plutão', 'Terra', '13:40:00', '7 days', 160, 110, 'LUXO'),
(10, 'Sunrise on Saturn', 'ColoniaTerra', 'Saturno', 'Terra', '09:50:00', '7 days', 110, 111, 'STANDARD'),
(11, 'Neptune Nirvana', 'ColoniaTerra', 'Netuno', 'Terra', '14:25:00', '7 days', 140, 112, 'DELUXE'),
(12, 'Enceladus Expedition', 'ColoniaEncelado', 'Encélado', 'Terra', '16:40:00', '7 days', 190, 113, 'LUXO'),
(13, 'Olympus Outing', 'ColoniaMarte', 'Marte', 'Terra', '11:25:00', '7 days', 100, 114, 'STANDARD'),
(14, 'Phobos Fantasy', 'ColoniaMarte', 'Fobos', 'Terra', '10:15:00', '7 days', 150, 115, 'DELUXE');

-- Inserções na tabela experiencia
INSERT INTO experiencia (nome, tipo, horario, localizacao, restricao, colonia, interativo) VALUES
('Observação de Estrelas', 'TURÍSTICA', '21:00:00', 'Área de Observação Celeste', 'Nenhuma', 'ColoniaTerra', TRUE),
('Lab de Biologia Marciana', 'CIENTÍFICA', '10:00:00', 'Laboratório de Pesquisa', 'Traje Espacial', 'ColoniaMarte', FALSE),
('Passeio nas Dunas de Titã', 'TURÍSTICA', '15:30:00', 'Planalto de Xanadu', 'Nenhuma', 'ColoniaTitan', TRUE),
('Estudo da Geologia Lunar', 'CIENTÍFICA', '13:45:00', 'Cratera Lunar', 'Traje Espacial', 'ColoniaLua', FALSE),
('Expedição Subsuperfície', 'TURÍSTICA', '12:00:00', 'Subsuperfície de Europa', 'Nenhuma', 'ColoniaEuropa', TRUE),
('Biologia Aquática', 'CIENTÍFICA', '09:30:00', 'Base Galileu', 'Traje Espacial', 'ColoniaGanymede', FALSE);

INSERT INTO equipamentos (experiencia, equipamento) VALUES
('Observação de Estrelas', 'Telescópio'),
('Lab de Biologia Marciana', 'Microscópio'),
('Lab de Biologia Marciana', 'Tubos de Ensaio'),
('Passeio nas Dunas de Titã', 'Veículo de Exploração'),
('Estudo da Geologia Lunar', 'Martelo Geológico'),
('Expedição Subsuperfície', 'Equipamento de Perfuração'),
('Biologia Aquática', 'Máscara de Mergulho');

-- Inserções na tabela pacoteExperiencias
INSERT INTO pacoteExperiencias (pacote, experiencia) VALUES
('Marte Escape', 'Observação de Estrelas'),
('Marte Escape', 'Lab de Biologia Marciana'),
('Vênus Vista', 'Passeio nas Dunas de Titã'),
('Lunar Landing', 'Estudo da Geologia Lunar'),
('Io Adventure', 'Expedição Subsuperfície'),
('Titan Trek', 'Biologia Aquática'),
('Europa Excursion', 'Observação de Estrelas'),
('Ganymede Getaway', 'Passeio nas Dunas de Titã'),
('Callisto Cabin', 'Lab de Biologia Marciana'),
('Mercury Mission', 'Biologia Aquática'),
('Pluto Pilgrimage', 'Estudo da Geologia Lunar'),
('Sunrise on Saturn', 'Biologia Aquática'),
('Neptune Nirvana', 'Expedição Subsuperfície'),
('Enceladus Expedition', 'Estudo da Geologia Lunar'),
('Olympus Outing', 'Lab de Biologia Marciana'),
('Phobos Fantasy', 'Observação de Estrelas');

INSERT INTO planeta (nome, numSatelites) VALUES
('Júpiter', 79),
('Terra', 1),
('Marte', 2),
('Vênus', 1);

INSERT INTO satelite (nome, planeta, distancia) VALUES
('Lua', 'Terra', 384400),
('Fobos', 'Marte', 9377),
('Ganimedes', 'Júpiter', 1070400),
('Europa', 'Júpiter', 671034),
('Ganímedes', 'Júpiter', 1070400);
