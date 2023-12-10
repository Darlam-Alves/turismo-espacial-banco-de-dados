CREATE TABLE turistaEspacial(
    passaporte VARCHAR (20) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    celular VARCHAR(12) ,
    telFixo VARCHAR(12),
    cep CHAR(9),
    numEndereço INTEGER,
    pais VARCHAR(30),
    dataNascimento DATE NOT NULL,
    
  CONSTRAINT pk_turista PRIMARY KEY (Passaporte),
	CONSTRAINT ck_cep_turista CHECK (cep ~ '^\d{5}-\d{3}$'),
	CONSTRAINT ck_celular_turista CHECK (celular ~ '^\d{2}9\d{8}$'),
	CONSTRAINT ck_fixo_turista CHECK (telFixo ~ '^\d{8}$')
);

CREATE TABLE pagamento (
    numTransacao CHAR(8) NOT NULL,
    dataPagamento DATE, 
    metodo CHAR(10) ,
    valor INTEGER,
    estado VARCHAR(10),
    
  CONSTRAINT pk_pagamento PRIMARY KEY (numTransacao),
	CONSTRAINT ck_metodo_pagamento CHECK (UPPER(metodo) IN ('CRÉDITO', 'DÉBITO', 'PIX')),
	CONSTRAINT ck_estado_pagamento CHECK (UPPER(estado) IN ('PAGO', 'NÃO PAGO'))
);

CREATE TABLE Pacote(
    nome VARCHAR(30) NOT NULL,
    nomeHospedagem VARCHAR(30),
    horaCheckIn TIME, 
    horaCheckOut TIME, 
    endereco VARCHAR(30) NOT NULL,
    
    CONSTRAINT pk_pacote PRIMARY KEY (nome)
);

CREATE TABLE viagem (
    dataPartida DATE NOT NULL, 
    pacote VARCHAR(30) NOT NULL,
    turista VARCHAR(20) NOT NULL,
    pagamento CHAR(8) NOT NULL,
    dataRetorno DATE, 
    duracao INTERVAL, 
		
  CONSTRAINT pk_viagem PRIMARY KEY (dataPartida, pacote, turista),
  CONSTRAINT fk_viagem_pagamento FOREIGN KEY (pagamento) REFERENCES pagamento(numTransacao),
	CONSTRAINT fk_viagem_pacote FOREIGN KEY (pacote) REFERENCES pacote(nome),
	CONSTRAINT fk_viagem_turista FOREIGN KEY (turista) REFERENCES turistaEspacial(passaporte),
  CONSTRAINT uk_viagem UNIQUE (pagamento)
);

CREATE TABLE avaliacao (
    dataPartida DATE NOT NULL, 
    pacote VARCHAR(30) NOT NULL,
    turista VARCHAR(20) NOT NULL,
    nota NUMERIC, 
    comentario VARCHAR (100),
    dataHora DATE,
    
    CONSTRAINT pk_avaliacao PRIMARY KEY (dataPartida, Pacote, Turista),
    CONSTRAINT fk_avaliacao FOREIGN KEY (dataPartida, Pacote, Turista) REFERENCES Viagem (dataPartida, Pacote, Turista),
		CONSTRAINT ck_avialacao CHECK ( nota >= 0 AND nota <= 10)
);

CREATE TABLE guiaEspacial (
    passaporte VARCHAR(20) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    celular VARCHAR(12),
    telFixo VARCHAR(12),
    cep CHAR(9), 
    numEndereco INTEGER,
    pais VARCHAR(30),
    dataNascimento DATE NOT NULL,
    
    CONSTRAINT pk_guiaEspacial PRIMARY KEY (passaporte),
    CONSTRAINT ck_cep_guia CHECK (cep ~ '^\d{5}-\d{3}$'),
    CONSTRAINT ck_celular_guia CHECK (celular ~ '^\d{2}9\d{8}$'), -- Atualização do padrão de celular
    CONSTRAINT ck_fixo_guia CHECK (telFixo ~ '^\d{8}$')
);

CREATE TABLE especialidades(
    guiaEspacial VARCHAR(20) NOT NULL,
    especialidade VARCHAR(30) NOT NULL,
    
    CONSTRAINT pk_especialidade PRIMARY KEY (guiaEspacial, especialidade),
    CONSTRAINT fk_especialidade_guia FOREIGN KEY (guiaEspacial) REFERENCES  guiaEspacial(Passaporte)
);

CREATE TABLE guiaPacote(
    guia VARCHAR (20) NOT NULL,
    pacote VARCHAR (30) NOT NULL,
    
    CONSTRAINT pk_guiaPacote PRIMARY KEY (guia, pacote),
    CONSTRAINT fk_guiaPacote_guia FOREIGN KEY (guia) REFERENCES guiaEspacial(passaporte),
    CONSTRAINT fk_guiaPacote_pacote FOREIGN KEY (pacote) REFERENCES Pacote(nome) 
);

CREATE TABLE linguasGuia(
    guia VARCHAR (20) NOT NULL,
    lingua VARCHAR (30)NOT NULL,
    
    CONSTRAINT pk_linguasGuia PRIMARY KEY (guia, lingua),
    CONSTRAINT fk_linguasGuia FOREIGN KEY (guia) REFERENCES guiaEspacial(passaporte)
);

CREATE TABLE corpoCeleste(
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    gravidade NUMERIC,
    numColonias INTEGER,
    
    CONSTRAINT pk_corpo_celeste PRIMARY KEY (nome),
    CONSTRAINT ck_corpoCeleste_tipo CHECK (UPPER(tipo) IN ('PLANETA', 'SATÉLITE')),
		CONSTRAINT ck_corpoCeleste_numcolonias CHECK (numColonias > 5)
);

CREATE TABLE colonia(
	nome VARCHAR(30) NOT NULL,
	habitantes INTEGER,
	localização VARCHAR(30),
	corpoCeleste VARCHAR(30) NOT NULL,

	CONSTRAINT pk_colonia PRIMARY KEY (nome),
	CONSTRAINT fk_colonia FOREIGN KEY (corpoCeleste) REFERENCES corpoCeleste(nome)
);




CREATE TABLE voo(
    numero INTEGER NOT NULL, 
    pacote VARCHAR(30) NOT NULL,
    colonia VARCHAR(30) NOT NULL,
    origem VARCHAR(40),
    destino VARCHAR(40) NOT NULL,
    horario TIME, 
    duracao INTERVAL,
    qtdPassageiro INTEGER NOT NULL,
	cabineNum INTEGER NOT NULL,
	cabineTipo VARCHAR(30) NOT NULL,
    
  CONSTRAINT pk_voo PRIMARY KEY (numero),
  CONSTRAINT fk_voo_pacote FOREIGN KEY (pacote) REFERENCES pacote(nome),
	CONSTRAINT ck_voo_cabineTipo CHECK (UPPER(cabineTipo) IN ('STANDARD', 'DELUXE', 'LUXO')),
  CONSTRAINT fk_voo_colonia FOREIGN KEY (colonia) REFERENCES colonia(nome)
);

CREATE TABLE experiencia(
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    horario TIME,
    localizacao VARCHAR(30),
    restricao VARCHAR(20),
    colonia VARCHAR(30) NOT NULL,
    interativo BOOLEAN,
    
    CONSTRAINT pk_experiencia PRIMARY KEY (nome),
    CONSTRAINT fk_experiencia_colonia FOREIGN KEY (colonia) REFERENCES colonia(nome),
    CONSTRAINT ck_tipo CHECK (UPPER(tipo) IN ('CIENTÍFICA', 'TURÍSTICA'))
);

CREATE TABLE equipamentos (
	experiencia VARCHAR(30) NOT NULL,
	equipamento VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_equipamentos PRIMARY KEY (experiencia, equipamento),
	CONSTRAINT fk_equipamentos FOREIGN KEY (experiencia) REFERENCES experiencia(nome)
);

CREATE TABLE pacoteExperiencias(
	pacote VARCHAR(30) NOT NULL,
	experiencia VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_pacote_experiencias PRIMARY KEY (pacote, experiencia),
	CONSTRAINT fk_pacoteExperiencias_pacote FOREIGN KEY (pacote) REFERENCES pacote(nome),
	CONSTRAINT fk_pacoteExperiencias_experiencias FOREIGN KEY (experiencia) REFERENCES experiencia(nome)
);

CREATE TABLE planeta(
	nome VARCHAR(30) NOT NULL,
	numSatelites INTEGER NOT NULL,
	
	CONSTRAINT pk_planeta PRIMARY KEY (nome),
	CONSTRAINT fk_planeta FOREIGN KEY (nome) REFERENCES corpoCeleste(nome)
);

CREATE TABLE satelite(
	nome VARCHAR(30) NOT NULL,
	planeta VARCHAR(30) NOT NULL,
	distancia DOUBLE PRECISION,
	
	CONSTRAINT pk_satelite PRIMARY KEY (nome),
	CONSTRAINT fk_satelite_nome FOREIGN KEY (nome) REFERENCES corpoCeleste(nome),
	CONSTRAINT fk_satelite_planeta FOREIGN KEY (planeta) REFERENCES planeta(nome)
);

CREATE TABLE especieNativa(
	corpoCeleste VARCHAR(30) NOT NULL,
	especie VARCHAR (30) NOT NULL,
	
	CONSTRAINT pk_especie_nativa PRIMARY KEY (corpoCeleste, especie),
	CONSTRAINT fk_especie_nativa FOREIGN KEY (corpoCeleste) REFERENCES corpoCeleste(nome)
);

CREATE TABLE atmosfera(
	corpoCeleste VARCHAR(30) NOT NULL,
	composicao VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_atmosfera PRIMARY KEY (corpoCeleste, composicao),
	CONSTRAINT fk_atmosfera FOREIGN KEY (corpoCeleste) REFERENCES corpoCeleste(nome)
);